#include <algorithm>
#include <assert.h>
#include <fstream>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>
#include <chrono>

#include "circuit.h"
#include "quartz/gate/gate_utils.h"
#include "quartz/parser/qasm_parser.h"
#include "quartz/tasograph/tasograph.h"

namespace quartz {

// check type
int num_iterations_by_heuristics(CircuitSeq *seq, int num_local_qubits,
                                 std::vector<std::vector<bool>> &local_qubits) {
  int num_qubits = seq->get_num_qubits();
  std::unordered_map<CircuitGate *, bool> executed;
  // No initial configuration -- all qubits are global.
  std::vector<bool> local_qubit(num_qubits, false);
  int num_iterations = 0;
  while (true) {
    bool all_done = true;
    std::vector<bool> executable(num_qubits, true);
    for (auto &gate : seq->gates) {
      if (gate->gate->is_quantum_gate() && !executed[gate.get()]) {
        bool ok = true;
        for (auto &output : gate->output_wires) {
          if (!executable[output->index]) {
            ok = false;
          }
        }
        if (!gate->gate->is_sparse()) {
          for (auto &output : gate->output_wires) {
            if (!local_qubit[output->index]) {
              ok = false;
            }
          }
        }
        if (ok) {
          // execute
          /*for (auto &output : gate->output_nodes) {
            std::cout << output->index << " ";
          }
          std::cout << "execute\n";*/
          executed[gate.get()] = true;
        } else {
          // not executable, block the qubits
          all_done = false;
          for (auto &output : gate->output_wires) {
            executable[output->index] = false;
          }
        }
      }
    }
    if (all_done) {
      break;
    }
    num_iterations++;
    // count global and local gates
    std::vector<bool> first_unexecuted_gate(num_qubits, false);
    std::vector<int> local_gates(num_qubits, 0);
    std::vector<int> global_gates(num_qubits, 0);
    bool first = true;
    for (auto &gate : seq->gates) {
      if (gate->gate->is_quantum_gate() && !executed[gate.get()]) {
        bool local = true;
        if (!gate->gate->is_sparse()) {
          for (auto &output : gate->output_wires) {
            if (!local_qubit[output->index]) {
              local = false;
            }
          }
        }
        for (auto &output : gate->output_wires) {
          if (local) {
            local_gates[output->index]++;
          } else {
            global_gates[output->index]++;
          }
          if (first) {
            first_unexecuted_gate[output->index] = true;
          }
        }
        first = false;
      }
    }
    auto cmp = [&](int a, int b) {
      if (first_unexecuted_gate[b])
        return false;
      if (first_unexecuted_gate[a])
        return true;
      if (global_gates[a] != global_gates[b]) {
        return global_gates[a] > global_gates[b];
      }
      if (local_gates[a] != local_gates[b]) {
        return local_gates[a] > local_gates[b];
      }
      // Use the qubit index as a final tiebreaker.
      return a < b;
    };
    std::vector<int> candidate_indices(num_qubits, 0);
    for (int i = 0; i < num_qubits; i++) {
      candidate_indices[i] = i;
      local_qubit[i] = false;
    }
    std::sort(candidate_indices.begin(), candidate_indices.end(), cmp);
    std::cout << "Iteration " << num_iterations << ": {";
    for (int i = 0; i < num_local_qubits; i++) {
      local_qubit[candidate_indices[i]] = true;
      std::cout << candidate_indices[i];
      if (i < num_local_qubits - 1) {
        std::cout << ", ";
      }
    }
    std::cout << "}" << std::endl;
    local_qubits.push_back(local_qubit);
  }
  std::cout << num_iterations << " iterations." << std::endl;
  return num_iterations;
}
} // namespace quartz

namespace sim {

/* public functions for qcircuit::Circuit */
template <typename DT>
qcircuit::Circuit<DT>::Circuit(std::vector<unsigned> const &perm,
                               unsigned nlocal) {
  num_qubits = perm.size();
  for (int i = 0; i < num_qubits; i++) {
    permutation.push_back(perm[i]);
  }
  n_local = nlocal;
  n_global = num_qubits - nlocal;
}

template <typename DT>
qcircuit::Circuit<DT>::Circuit(unsigned nqubits, unsigned nlocal) {
  num_qubits = nqubits;
  for (int i = 0; i < num_qubits; i++) {
    permutation.push_back(i);
    pos.push_back(i);
  }
  n_local = nlocal;
  n_global = num_qubits - nlocal;
}

template <typename DT>
qcircuit::Circuit<DT>::Circuit(unsigned nqubits, unsigned nlocal, int ndevices, int myrank, int nranks) {
  num_qubits = nqubits;
  for (int i = 0; i < num_qubits; i++) {
    permutation.push_back(i);
    pos.push_back(i);
  }
  n_local = nlocal;
  n_global = num_qubits - nlocal;
  myRank = myrank;
  nRanks = nranks;
  n_devices = ndevices;
}

template <typename DT>
bool qcircuit::Circuit<DT>::load_circuit_from_file(
    std::string const &filename) {
  std::fstream input(filename, std::ios::in);

  unsigned nqubits = 0;
  unsigned ngates = 0;
  // line[0]: nqubits, ngates
  input >> nqubits;
  assert(nqubits == num_qubits);

  input >> ngates;
  gates.reserve(ngates);

  std::string line;
  line.reserve(128);
  std::string gate_name;
  gate_name.reserve(16);

  for (unsigned i = 0; i < ngates; i++) {
    std::stringstream ss(line);
    // normal gate lines: gate_name, target_qubits, params
    // controled gates: c n_control control_qubits gate_name target_qubits
    // params shuffle gate: sf new_perm
    ss >> gate_name;
    // if (!parse_gate(ss, gate_name)) {
    //   return false;
    // }
  }

  return true;
}

// TODO: add mode to use heuristics or ILP
template <typename DT>
bool qcircuit::Circuit<DT>::compile(quartz::CircuitSeq *seq,
                                    quartz::Context *ctx,
                                    quartz::PythonInterpreter *interpreter,                     
                                    bool use_ilp,
                                    std::string cache_file_name_prefix) {
  // 1. ILP/heuristics
  std::vector<std::vector<int>> local_qubits;
  // if (!use_ilp)
  //   // int result = num_iterations_by_heuristics(seq, n_local, local_qubits);
  //   assert(0);
  // else {
  //   local_qubits =
  //       compute_local_qubits_with_ilp(*seq, n_local, ctx, interpreter);
  // }
  // fprintf(fout, " %d", result);

  // 2. DP, fuse gates and add shuffle gates
  // quartz::KernelCost kernel_cost(
  //     /*fusion_kernel_costs=*/{0, 10.4, 10.400001, 10.400002, 11, 40, 46, 66},
  //     /*shared_memory_init_cost=*/10,
  //     /*shared_memory_gate_cost=*/[](quartz::GateType type) { if (type == quartz::GateType::swap) return 1000.0; else return 0.8; },
  //     /*shared_memory_total_qubits=*/10, /*shared_memory_cacheline_qubits=*/3);
  quartz::KernelCost kernel_cost(
      /*fusion_kernel_costs=*/{0, 6.4, 6.2, 6.5, 6.4, 6.4, 25.8, 32.4},
      /*shared_memory_init_cost=*/6,
      /*shared_memory_gate_cost=*/[](quartz::GateType type) { if (type == quartz::GateType::swap) return 1000.0; else return 0.5; },
      /*shared_memory_total_qubits=*/10, /*shared_memory_cacheline_qubits=*/3);
  // quartz::KernelCost kernel_cost(
  //     /*fusion_kernel_costs=*/{0, 20, 20, 20, 20, 20, 25.8, 32.4},
  //     /*shared_memory_init_cost=*/3,
  //     /*shared_memory_gate_cost=*/[](quartz::GateType type) { if (type == quartz::GateType::swap) return 1000.0; else return 0.8; },
  //     /*shared_memory_total_qubits=*/10, /*shared_memory_cacheline_qubits=*/3);
  // quartz::KernelCost kernel_cost(
  //     /*fusion_kernel_costs=*/{0, 10.4, 10.400001, 10.400002, 11, 40, 46, 66},
  //     /*shared_memory_init_cost=*/10,
  //     /*shared_memory_gate_cost=*/[](quartz::GateType type) { if (type == quartz::GateType::swap) return 1000.0; else return 0.8; },
  //     /*shared_memory_total_qubits=*/10, /*shared_memory_cacheline_qubits=*/3);
  // auto schedules = get_schedules(*seq, local_qubits, kernel_cost, ctx, /*absorb_single_qubit_gates=*/true, -1, 
  //                               cache_file_name_prefix);
  auto schedules = get_schedules_with_ilp(*seq, n_local, std::min(2, int(num_qubits - n_local)),
                                   kernel_cost, ctx, interpreter,
                                   /*attach_single_qubit_gates=*/true,
                                   /*max_num_dp_states=*/500, cache_file_name_prefix);
  int idx = 0;
  num_fuse = 0;
  num_shm = 0;
  num_shuffle = schedules.size()-1;
  for (auto &schedule : schedules) {
    // add shuffle gate
    if (idx == 0) {
      auto qubit_layout = schedule.get_qubit_layout();
      init_permutation.assign(qubit_layout.begin(), qubit_layout.end());
      permutation.assign(qubit_layout.begin(), qubit_layout.end());
      // get pos from layout
      for (int i = 0; i < num_qubits; i++) {
        pos[permutation[i]] = i;
      }
      // set the local mask
      for (int i = 0; i < num_qubits; i++) {
        local_mask.push_back(pos[i] < n_local);
      }

      printf("Current Layout0: [");
      for (int i = 0; i < permutation.size(); i++) {
        printf("%d, ", permutation[i]);
      }

      permutation_record.push_back(permutation);
      pos_record.push_back(pos);
      idx++;
    }
    else {
      auto qubit_layout = schedule.get_qubit_layout();
      permutation.assign(qubit_layout.begin(), qubit_layout.end());
      // get pos from layout
      for (int i = 0; i < num_qubits; i++) {
        pos[permutation[i]] = i;
      }
      // set the local mask
      for (int i = 0; i < num_qubits; i++) {
        local_mask[i] = (pos[i] < n_local);
      }
      Gate<DT> gate{SHUFFLE, num_qubits, 0, qubit_layout, {}, {}, {}};
      gates.push_back(gate);
      task_map.push_back(SimGateType::SHUFFLE);
      update_layout_from_schedule(schedule, schedules[idx-1]);
      printf("Current Layout0: [");
      for (int i = 0; i < permutation.size(); i++) {
        printf("%d, ", permutation[i]);
      }
      idx++;
    }
    

    for (auto &kernel : schedule.kernels) {
      if (kernel.gates->gates.size() == 0) continue;
      if (kernel.type == quartz::KernelType::fusion) {
        num_fuse++;
        FuseGates(kernel, ctx);
      }
      else if (kernel.type == quartz::KernelType::shared_memory) {
        num_shm++;
        SimGateType g_type = SHM;
        qindex active_qubits_logical = 0;
        printf("SHM Kernel Physical (%d): [ ", kernel.gates->gates.size());
        for (int i = 0; i < kernel.qubits.size(); i++) {
          active_qubits_logical |= qindex(1) << kernel.qubits[i];
          if (i != kernel.qubits.size() - 1)
            printf("%d,", pos[kernel.qubits[i]]);
          else
            printf("%d]\n", pos[kernel.qubits[i]]);
        }
        // if kernel.qubits.size() < SHARED_MEM_SIZE: fill it
        if (kernel.qubits.size() < SHARED_MEM_SIZE) {
          int cnt = kernel.qubits.size();
          for (int k = 0; k < n_local; k++) {
            if (!(active_qubits_logical & (qindex(1) << permutation[k]))) {
              cnt++;
              active_qubits_logical |= (qindex(1) << permutation[k]);
              if (cnt == SHARED_MEM_SIZE)
                  break;
            }
          }
        }
        active_logical_qs.push_back(active_qubits_logical);
        std::cout << kernel.to_string() << std::endl;

        std::vector<KernelGate> kernelgates;
        
        for(auto &gate : kernel.gates->gates) {
          // get logical target qubit
          std::vector<int> qubit_indices;
          std::vector<ParamType> params;
          for (const auto &input_wire : gate->input_wires) {
            if (input_wire->is_qubit()) {
              qubit_indices.push_back(input_wire->index);
            } else {
              params.push_back(ctx->get_param_value(input_wire->index));
            }
          }
          auto *m = gate->gate->get_matrix(params);
          std::vector<std::complex<qreal>> mat = m->flatten();

          std::vector<bool> ctr_states = gate->gate->get_control_state();
          if (!std::all_of(ctr_states.begin(), ctr_states.end(),
                             [](bool v) { return v; })){
                              printf("we have general control gates\n");
                              // assert(0);
                             }
          // TODO: support general control gates
          // target and control will be converted to related qubit when executing
          // TODO: general control gates
          if (gate->gate->get_num_control_qubits() == 2) {
            // don't want to hardcode..
            qComplex mat_[2][2] = {mat[3*8+3].real(),mat[3*8+3].imag(), mat[3*8+7].real(), mat[3*8+7].imag(), mat[7*8+3].real(), mat[7*8+3].imag(), mat[7*8+7].real(), mat[7*8+7].imag()};
            qindex mask = active_qubits_logical;
            char isGlobalControl1 = (mask >> qubit_indices[0]) & 1;
            char isGlobalControl2 = (mask >> qubit_indices[1]) & 1;
            char isGlobalTarget = (mask >> qubit_indices[2]) & 1;
            KernelGate kg(toKernel(gate->gate->tp), qubit_indices[1], isGlobalControl2, qubit_indices[0], isGlobalControl1, qubit_indices[2], isGlobalTarget, mat_);
            kernelgates.push_back(kg);
          }
          else if (gate->gate->get_num_control_qubits() == 1) {
            // compress mat
            qComplex mat_[2][2] = {mat[1*4+1].real(),mat[1*4+1].imag(), mat[1*4+3].real(), mat[1*4+3].imag(), mat[3*4+1].real(), mat[3*4+1].imag(), mat[3*4+3].real(), mat[3*4+3].imag()};
            qindex mask = active_qubits_logical;
            char isGlobalControl1 = (mask >> qubit_indices[0]) & 1;
            char isGlobalTarget = (mask >> qubit_indices[1]) & 1;
            KernelGate kg(toKernel(gate->gate->tp), qubit_indices[0], isGlobalControl1, qubit_indices[1], isGlobalTarget, mat_);
            kernelgates.push_back(kg);
          }
          else if (gate->gate->get_num_control_qubits() == 0) {
            if(!local_mask[qubit_indices[0]]) {
                assert(gate->gate->tp != quartz::GateType::h);
                assert(gate->gate->tp != quartz::GateType::u2);
            }
            qComplex mat_[2][2] = {mat[0].real(),mat[0].imag(), mat[1].real(), mat[1].imag(), mat[2].real(), mat[2].imag(), mat[3].real(), mat[3].imag()};
            qindex mask = active_qubits_logical;
            char isGlobalTarget = (mask >> qubit_indices[0]) & 1;
            KernelGate kg(toKernel(gate->gate->tp), qubit_indices[0], isGlobalTarget, mat_);
            kernelgates.push_back(kg); 
          }            
        }

        shm_gates.push_back(kernelgates);
        task_map.push_back(SimGateType::SHM);
      }
    }
  }

  printf("Compilation Done! \n");
  printf("Num Shuffles: %d\n", schedules.size()-1);
  printf("Num FUSION Kernel: %d\n", num_fuse);
  printf("Num SHM Kernel: %d\n", num_shm);
  printf("Start Simulating...\n");
  

  return true;
}

template <typename DT>
void qcircuit::Circuit<DT>::simulate(bool use_mpi) {
  using Simulator = SimulatorCuQuantum<DT>;
  Simulator simulator(n_local, n_global, n_devices, myRank, nRanks);
  if (!use_mpi)
    simulator.InitStateSingle(init_permutation);
  else
    simulator.InitStateMulti(init_permutation);

  printf("Init State Vectors!\n");
  auto start = std::chrono::system_clock::now();

  int normal_idx = 0;
  int shm_idx = 0;
  int shuffle_idx = 0;
  for (auto &task : task_map) {
    if (task == SHUFFLE) {
      // simulator.ApplyShuffle(gates[normal_idx]);
      auto global_swap = global_swap_record[shuffle_idx];
      auto local_swap = local_swap_record[shuffle_idx];
      simulator.ApplyRecordedShuffle(global_swap, local_swap);
      // update layout & pos
      simulator.permutation = permutation_record[shuffle_idx+1];
      simulator.pos = pos_record[shuffle_idx+1];
      normal_idx++;
      shuffle_idx++;
    }
    else if (task == FUSED) {
      for (int i = 0; i < n_devices; i++){
        simulator.ApplyGate(gates[normal_idx], i); 
      }
      normal_idx++;
    }
    else if (task == SHM) {
      // qindex qs = active_logical_qs[shm_idx];
      // for(int i = 0; i < num_qubits; i++) {
      //   if((qs >> i) & 1) {
      //     printf("qs %d\n", i);
      //   }
      // }
      simulator.ApplyKernelGates(shm_gates[shm_idx], active_logical_qs[shm_idx]);
      shm_idx++;
    }
  }
  
  printf("Finish Simulating! Total: %d FUSE Kernel, %d SHM Kernel, %d Shuffles.\n", num_fuse, num_shm, num_shuffle);
  simulator.Destroy(false);
  auto end= std::chrono::system_clock::now();
  auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
  printf("Time Cost: %d us\n", int(duration.count()));
  printf("Destroyed the simulator\n");
}

/* private functiona for qcircuit::Circuit */

// an naive impl for fusing gates: can be more efficient
template <typename DT>
bool qcircuit::Circuit<DT>::FuseGates(const quartz::Kernel &kernel,
                                 quartz::Context *ctx) {
  printf("Start fusing gates...\n");
  SimGateType g_type = FUSED;
  unsigned n_target = kernel.qubits.size();
  unsigned n_control = 0;
  std::vector<int> target;
  std::vector<int> control;
  
  //reset qubit group map for current fusion kernel's qubits
  printf("Reset qubit group map\n");
  int fuse = 0;
  qubit_group_map_fusion.clear();
  for (int i = 0; i < n_local; i++) {
    if (std::find(kernel.qubits.begin(), kernel.qubits.end(), permutation[i]) != kernel.qubits.end()) {
        target.push_back(i); //physical target
        printf("(%d, %d) ", i, permutation[i]);
        qubit_group_map_fusion[permutation[i]] = fuse++;
    }
  }

  printf("current Layout: [");
  for (int i = 0; i < permutation.size(); i++){
    printf("%d,", permutation[i]);
  }
  printf("]\n");

  if(n_target==0) {
    printf("we have 0-qubit fusion kernel\n");
    n_target = 4;
    for(int i=0; i < n_target; i++){
      target.push_back(i);
    }
  }

  printf( "Fusing Kernel (%d gates): qubits [", kernel.gates->gates.size());
  for (int j = 0; j < (int)kernel.qubits.size(); j++) {
    std::cout << kernel.qubits[j];
    if (j != (int)kernel.qubits.size() - 1) {
      std::cout << ", ";
    }
  }
  std::cout << "], gates ";
  std::cout << kernel.to_string() << std::endl;


  std::vector<int> qubits = kernel.qubits;
  unsigned ksize = unsigned(1) << kernel.qubits.size();
  unsigned vec_size = ksize * ksize;
  std::vector<std::vector<std::complex<DT>>> res_mats;
  std::vector<std::complex<DT>> res_mat;
  res_mat.resize(vec_size);
  for (unsigned i = 0; i < ksize; ++i) {
    res_mat[(ksize * i + i)] = std::complex<DT>(1, 0);
  }
  for (int i = 0; i < n_devices; i++) {
    res_mats.push_back(res_mat);
  }

  // printf("Fused Kernel Size: %d\n", ksize);
  // // reorder qubits to increasing order
  // std::sort(qubits.begin(), qubits.end());

  for (int i = 0; i < kernel.gates->gates.size(); i++) {
    printf("Gate %d: [", i);
    std::vector<int> qubit_indices;
    std::vector<ParamType> params;
    for (const auto &input_wire : kernel.gates->gates[i]->input_wires) {
      if (input_wire->is_qubit()) {
        qubit_indices.push_back(input_wire->index);
        printf("%d, ", input_wire->index);
      } else {
        params.push_back(ctx->get_param_value(input_wire->index));
      }
    }
    printf("]\n");

    for (int d = 0; d < n_devices; d++) {
      unsigned mask = 0;
      std::vector<int> qperm;
      std::vector<ComplexType> temp_mat_;
      if(getMat_per_device(ctx, myRank*n_devices+d, kernel.gates->gates[i]->gate, qubit_indices, params, temp_mat_, mask, qperm)) {
        //do MatMul
        M temp_mat(temp_mat_.begin(), temp_mat_.end());
        MatShuffle(temp_mat, qperm.size(), qperm);
        MatMul(mask, qubits.size(), res_mats[d], temp_mat);
      }
      //otherwise skip
    } 
  }

  // add fused gates kernels
  Gate<DT> gate{g_type, n_target, n_control, target, control, {}, res_mats};
  gates.push_back(gate);
  task_map.push_back(SimGateType::FUSED);

  return true;
}

template <typename DT>
void qcircuit::Circuit<DT>::MatMul(unsigned mask, unsigned n_fused, M &res_mat,
                                   const M &m1) {
  // expand m1
  unsigned m_size = 0;
  for (int i = 0; i < n_fused; i++) {
    if((mask >> i) & 1) m_size++;
  }
  printf("Matrix Multiplication (%d, %d), mask %d\n", n_fused, m_size, mask);
  unsigned n1 = unsigned{1} << m_size;
  unsigned n = unsigned{1} << n_fused;
  std::vector<std::complex<DT>> temp_mat = res_mat;

  for (unsigned i = 0; i < n; ++i) {
    unsigned i_ = i;
    unsigned row_m1 = 0;
    unsigned pos = 0;
    for (unsigned q = 0; q < n_fused; ++q) {
      if ((mask >> q) & 1) {
        row_m1 |= ((i_ >> q) & 1) << pos;
        ++pos;
      }
    }

    for (unsigned j = 0; j < n; ++j) {
      std::complex<DT> re = std::complex<DT>(0, 0);
      for (unsigned k = 0; k < n1; ++k) {
        // row res_mat
        unsigned row_res = 0;
        unsigned k_ = k;
        pos = 0;
        for (unsigned q = 0; q < n_fused; ++q) {
          if ((mask >> q) & 1) {
            row_res |= ((k_ >> pos) & 1) << q;
            ++pos;
          }
        }
        row_res += (i & ~mask);
        std::complex<DT> v1 = m1[(n1 * row_m1 + k)];
        std::complex<DT> v2 = temp_mat[(n * row_res + j)];

        re += v1 * v2;
      }

      res_mat[(n * i + j)] = re;
    }
  }

  // for (int i = 0; i < res_mat.size(); i++) {
  //   printf("(%.1f, %.1f)", res_mat[i].real(), res_mat[i].imag());
  // }
  // printf("\n");
}

template <typename DT>
void qcircuit::Circuit<DT>::MatShuffle(M &res_mat, unsigned n_qubit,
                                       const std::vector<int> &perm) {

  std::vector<std::complex<DT>> temp_mat = res_mat;
  // printf("Matrix Shuffle\n");

  unsigned n = unsigned{1} << n_qubit;

  for (unsigned i = 0; i < n; ++i) {
    unsigned i_ = i;
    unsigned row = 0;

    for (unsigned q = 0; q < n_qubit; ++q) {
      row |= ((i_ >> q) & 1) << perm[q];
    }

    for (unsigned j = 0; j < n; ++j) {
      unsigned j_ = j;
      unsigned col = 0;

      for (unsigned q = 0; q < n_qubit; ++q) {
        col |= ((j_ >> q) & 1) << perm[q];
      }

      res_mat[n * i + j] = temp_mat[n * row + col];
    }
  }

  // for (int i = 0; i < res_mat.size(); i++) {
  //   printf("(%.1f, %.1f)", res_mat[i].real(), res_mat[i].imag());
  // }
  // printf("\n");
}

#define IS_HIGH_PART(part_id, logicIdx) ((part_id >> (pos[logicIdx] - n_local) & 1) > 0)
template <typename DT>
bool qcircuit::Circuit<DT>::getMat_per_device(quartz::Context *ctx, int part_id, quartz::Gate* gate, std::vector<int> qubit_indices, std::vector<ParamType>& params, std::vector<ComplexType>& res, unsigned &mask, std::vector<int>& perm) {
  printf("Fusing gate %d(%d) for rank %d\n", gate->tp, gate->get_num_control_qubits(), part_id);
  if (gate->get_num_control_qubits() == 2) { //ccx
    int c2 = qubit_indices[0];
    int c1 = qubit_indices[1];
    int t = qubit_indices[2];
    // printf("c,c,t %d,%d,%d\n",c2,c1,t);
    if(local_mask[c2] && !local_mask[c1]) {
      int c = c1; c1 = c2; c2 = c;
    }
    if (local_mask[c1] && local_mask[c2]) { // CCU(c1, c2, t)
      auto *m = gate->get_matrix(params);
      res = m->flatten();
      std::vector<int> position;
      for (int t = 0; t < qubit_indices.size(); t++) {
        int v = qubit_group_map_fusion.at(qubit_indices[t]);
        position.push_back(v);
        mask |= 1 << v;
      }
      std::vector<int> sorted_position_;
      std::sort(sorted_position_.begin(), sorted_position_.end());
      assert(qubit_indices.size()==3);
      perm.resize(qubit_indices.size());
      for (int t = 0; t < qubit_indices.size(); t++) {
        int it2 = std::find(position.begin(), position.end(),
                            sorted_position_[t]) -
                  position.begin();
        perm[it2] = t;
      }
      return true;
    } else if (local_mask[c1] && !local_mask[c2]) {
        if (IS_HIGH_PART(part_id, c2)) { // CU(c1, t)
          //cx/cz gate mat
          if(gate->tp == quartz::GateType::ccx) {
            quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::cx);
            auto *m = new_gate->get_matrix();
            res = m->flatten();
          }
          else if(gate->tp == quartz::GateType::ccz) {
            quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::cz);
            auto *m = new_gate->get_matrix();
            res = m->flatten();
          }
          mask |= 1 << qubit_group_map_fusion.at(c1);
          mask |= 1 << qubit_group_map_fusion.at(t);
          perm.resize(2);
          perm[0] = qubit_group_map_fusion.at(c1) > qubit_group_map_fusion.at(t) ? 1 : 0;
          perm[1] = 1 - perm[0];
          return true;
          
        } else { // ID(t)
          return false;
        }
    } else { // !local_mask[c1] && !local_mask[c2]
        if (IS_HIGH_PART(part_id, c1) && IS_HIGH_PART(part_id, c2)) { // U(t)
          if(gate->tp == quartz::GateType::ccx) {
            quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::x);
            auto *m = new_gate->get_matrix();
            res = m->flatten();
          }
          else if(gate->tp == quartz::GateType::ccz) {
            quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::cz);
            auto *m = new_gate->get_matrix();
            res = m->flatten();
          }
          mask |= 1 << qubit_group_map_fusion.at(t);
          perm.resize(1);
          perm[0] = 0;
          return true;
        } else { // ID(t)
            return false;
        }
    }
  }
  else if (gate->get_num_control_qubits() == 1) {//cz, cp, cx
    int c = qubit_indices[0], t = qubit_indices[1];
    printf("c,t %d,%d\n",c,t);
    if (local_mask[c] && local_mask[t]) { // CU(c, t)
      auto *m = gate->get_matrix(params);
      res = m->flatten();
      mask |= 1 << qubit_group_map_fusion.at(c);
      mask |= 1 << qubit_group_map_fusion.at(t);
      perm.resize(2);
      perm[0] = qubit_group_map_fusion.at(c) > qubit_group_map_fusion.at(t) ? 1 : 0;
      perm[1] = 1 - perm[0];
      return true;    
    } 
    else if (local_mask[c] && !local_mask[t]) { // U(c)
        // printf("here2\n");
        if (IS_HIGH_PART(part_id, t)) { // U(t)
          // for this case, control qubit will become target, can be proved
          if(gate->tp == quartz::GateType::cz) {
            quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::z);
            auto *m = new_gate->get_matrix();
            res = m->flatten();
          }
          else if(gate->tp == quartz::GateType::cp) {
            quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::p);
            auto *m = new_gate->get_matrix(params);
            res = m->flatten();
          }
          mask |= 1 << qubit_group_map_fusion.at(c);
          perm.resize(1);
          perm[0] = 0;
          return true;
        }
        else {
          return false;
        }
    } 
    else if (!local_mask[c] && local_mask[t]) {
      // printf("here3\n");
        if (IS_HIGH_PART(part_id, c)) { // U(t)
          if(gate->tp == quartz::GateType::cx) {
            quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::x);
            auto *m = new_gate->get_matrix();
            res = m->flatten();
          }
          else if(gate->tp == quartz::GateType::cz) {
            quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::z);
            auto *m = new_gate->get_matrix();
            res = m->flatten();
          }
          else if(gate->tp == quartz::GateType::cp) {
            quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::p);
            auto *m = new_gate->get_matrix(params);
            res = m->flatten();
          }
          mask |= 1 << qubit_group_map_fusion.at(t);
          perm.resize(1);
          perm[0] = 0;
          return true;
        } else {
            return false;
        }
    } 
    else { // !local_mask[c] && !local_mask[t]
        // printf("here4\n");
        assert(gate->tp == quartz::GateType::cz || gate->tp == quartz::GateType::cp);
        if (IS_HIGH_PART(part_id, c)) {
            switch (gate->tp) {
                case quartz::GateType::cz: {
                    if (IS_HIGH_PART(part_id, t)) {
                        quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::z);
                        auto *m = new_gate->get_matrix();
                        res = m->flatten();
                        res[0] = res[3];
                        mask |= 1 << 0;
                        perm.resize(1);
                        perm[0] = 0;
                        return true;  
                    }
                }
                case quartz::GateType::cp: {
                    if (IS_HIGH_PART(part_id, t)) {
                        quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::p);
                        auto *m = new_gate->get_matrix(params);
                        res = m->flatten();
                        res[0] = res[3];
                        mask |= 1 << 0;
                        perm.resize(1);
                        perm[0] = 0;
                        return true;
                    }
                }
            }
        } else {
            return false;
        }
    }
  }
  else if (gate->get_num_control_qubits() == 0) {
    int t = qubit_indices[0];
    printf("t %d\n",t);
      if (!local_mask[t]) { // GCC(t)
        switch (gate->tp) {
            case quartz::GateType::p: {
                if (IS_HIGH_PART(part_id, t)) {
                    quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::p);
                    auto *m = new_gate->get_matrix(params);
                    res = m->flatten();
                    res[0] = res[3];
                    mask |= 1 << 0;
                    perm.resize(1);
                    perm[0] = 0;
                    return true;
                } else {
                    return false;
                }
            }
            case quartz::GateType::z: {
                if (IS_HIGH_PART(part_id, t)) {
                    quartz::Gate* new_gate = ctx->get_gate(quartz::GateType::z);
                    auto *m = new_gate->get_matrix();
                    res = m->flatten();
                    res[0] = res[3];
                    mask |= 1 << 0;
                    perm.resize(1);
                    perm[0] = 0;
                    return true;  
                } else {
                    return false;
                }
            }
            // case quartz::GateType::x: { //TODO
            //     if (IS_HIGH_PART(part_id, t)) {
            //         //change device logic <-> physic mapping
            //         return false;
            //     } else {
            //         return false;
            //     }
            // }
        }
      } 
      else { // local_mask[t] -> U(t)
        auto *m = gate->get_matrix(params);
        res = m->flatten();
        mask |= 1 << qubit_group_map_fusion.at(t);
        perm.resize(1);
        perm[0] = 0;
        return true;
      }
  }

  return false;
}

template <typename DT>
void qcircuit::Circuit<DT>::update_layout(std::vector<int> targets) {
  
  std::vector<int2> local_swap;
  std::vector<int> new_global_pos;
  int nGlobalSwaps = n_global;
  int nLocalSwaps = 0;
  int num_swaps = 0;
  for (int i = 0; i < n_global; i++) {
    new_global_pos.push_back(pos[targets[i + n_local]]);
    if(pos[targets[i + n_local]] < n_local) num_swaps++;
  }
  std::sort(new_global_pos.begin(), new_global_pos.end());
  
  unsigned local_mask = 0;
  unsigned global_mask = 0;
  unsigned global = 0;
  int j1 = 0;
  for (int i = n_global - 1; i >= 0; i--) {
    global |= unsigned(1) << i;
    if(new_global_pos[i] >= n_local) {
      global_mask |= 1 << (new_global_pos[i] - n_local);
      nGlobalSwaps--;
    }
    else {
      // for nccl-based comm, local transpose
      if(new_global_pos[i] >= (n_local - num_swaps)) {
        local_mask |= 1 << (new_global_pos[i] - n_local + num_swaps);
      }
      else {
        nLocalSwaps++;
        for (int j = num_swaps - 1; j >= 0; j--) {
          if(!(local_mask >> j & 1)) {
            int2 swap;
            swap.x = new_global_pos[i];
            swap.y = n_local - num_swaps + j;
            local_swap.push_back(swap);
            std::swap(pos[permutation[new_global_pos[i]]], pos[permutation[n_local - num_swaps + j]]);
            std::swap(permutation[new_global_pos[i]], permutation[n_local - num_swaps + j]);
            local_mask |= 1 << j;
            break;
          }
        }
      }
    }
  }

  for (int i = 0; i < n_global; i++) {
    if((~global_mask) >> i & 1) {
      std::swap(pos[permutation[n_local-nGlobalSwaps]], pos[permutation[i+n_local]]);
      std::swap(permutation[n_local-nGlobalSwaps], permutation[i+n_local]);
      nGlobalSwaps--;
    }     
  }

  permutation_record.push_back(permutation);
  pos_record.push_back(pos);
  local_swap_record.push_back(local_swap);
  global_swap_record.push_back(global&(~global_mask));

  // printf("Current Layout: [");
  // for (int i = 0; i < permutation.size(); i++) {
  //   printf("%d, ", permutation[i]);
  // }
}

template <typename DT>
void qcircuit::Circuit<DT>::update_layout_from_schedule(const quartz::Schedule &cur_schedule, const quartz::Schedule &prev_schedule) {
  
  std::vector<int2> local_swap;
  unsigned global = 0;
  auto local_swap_from_schedule = cur_schedule.get_local_swaps_from_previous_stage(prev_schedule);
  for (int i = 0; i < local_swap_from_schedule.size(); i++) {
    int2 swap;
    swap.x = local_swap_from_schedule[i].first;
    swap.y = local_swap_from_schedule[i].second;
    local_swap.push_back(swap);
  }
  // check for global swap
  auto prev_pos = pos_record.back();
  auto prev_permutation = permutation_record.back();
  for (int i = 0; i < n_global; i++) {
    if(pos[prev_permutation[i+n_local]] < n_local) {
      global |= unsigned(1) << i;
    }
  }

  permutation_record.push_back(permutation);
  pos_record.push_back(pos);
  local_swap_record.push_back(local_swap);
  global_swap_record.push_back(global);
}

template <typename DT>
KernelGateType qcircuit::Circuit<DT>::toKernel(quartz::GateType type) {
    switch (type) {
      case quartz::GateType::ccx:
        return KernelGateType::CCX;
      case quartz::GateType::cx:
        return KernelGateType::CNOT;
      case quartz::GateType::cz:
        return KernelGateType::CZ;
      case quartz::GateType::cp:
        return KernelGateType::CU1;
      case quartz::GateType::u1:
        return KernelGateType::U1;
      case quartz::GateType::u2:
        return KernelGateType::U2;
      case quartz::GateType::u3:
        return KernelGateType::U3;
      case quartz::GateType::h:
        return KernelGateType::H;
      case quartz::GateType::x:
        return KernelGateType::X;
      case quartz::GateType::y:
        return KernelGateType::Y;
      case quartz::GateType::z:
        return KernelGateType::Z;
      case quartz::GateType::s:
        return KernelGateType::S;
      case quartz::GateType::sdg:
        return KernelGateType::SDG;
      case quartz::GateType::rx:
        return KernelGateType::RX;
      case quartz::GateType::ry:
        return KernelGateType::RY;
      case quartz::GateType::rz:
        return KernelGateType::RZ;
      case quartz::GateType::t:
        return KernelGateType::T;
      case quartz::GateType::tdg:
        return KernelGateType::TDG;
      default:
          assert(false);
    }
  }

template class qcircuit::Circuit<double>;
template class qcircuit::Circuit<float>;

} // namespace sim
