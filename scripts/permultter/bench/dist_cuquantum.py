import cusvaer
from qiskit import QuantumCircuit, transpile
from cusvaer.backends import StatevectorSimulator
import argparse
import time

def create_circuit(circuit_name, nqubits):
    file = "/pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_" + str(nqubits) + "q/" + circuit_name + "_indep_qiskit_" + str(nqubits) + "_no_swap.qasm"
    circ = QuantumCircuit.from_qasm_file(file)
    circ.measure_all()
    return circ

def simulate_warm_up(nqubits):
    circuit = create_circuit("qft", nqubits)

    # create options dictionary to override communicator settings and set precision
    options = {
    'cusvaer_comm_plugin_type': cusvaer.CommPluginType.MPI_MPICH,  # use MPICH MPI
    'cusvaer_comm_plugin_soname': 'libmpi.so',  # name of the MPI shared library
    'precision': 'double'  # double precision
    }

    # create StatevectorSimulator instead of using Aer.get_backend()
    simulator = StatevectorSimulator()
    simulator.set_options(**options)
    circuit = transpile(circuit, simulator)
    job = simulator.run(circuit)
    result = job.result()

def simulate(circuit_name, nqubits):
    circuit = create_circuit(circuit_name, nqubits)

    # create options dictionary to override communicator settings and set precision
    options = {
    'cusvaer_comm_plugin_type': cusvaer.CommPluginType.MPI_MPICH,  # use MPICH MPI
    'cusvaer_comm_plugin_soname': 'libmpi.so',  # name of the MPI shared library
    'precision': 'double'  # double precision
    }

    # create StatevectorSimulator instead of using Aer.get_backend()
    simulator = StatevectorSimulator()
    simulator.set_options(**options)
    circuit = transpile(circuit, simulator)
    start_time = time.time()
    job = simulator.run(circuit)
    result = job.result()
    end_time = time.time()
    print(f"rank from `result`: {result.mpi_rank}, size: {result.num_mpi_processes}, time: {1000*(end_time - start_time)}ms")
    # write timing result to files
    with open(f"/pscratch/sd/z/zjia/qs/result-srun/cusvaer/{circuit_name}_{nqubits}_{result.mpi_rank}.log", "w") as f:
        f.write(f"{1000*(end_time - start_time)}ms\n")



if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='parse inputs')
    parser.add_argument('--nqubits', type=int, help='Number of qubits')
    args = parser.parse_args()
    simulate_warm_up(args.nqubits)
    strings=["ae", "dj", "ghz", "graphstate", "ising", "qft", "qpeexact", "qsvm", "su2random", "vqc", "wstate", "bv"]
    for s in strings:
        simulate(s, args.nqubits)
    

