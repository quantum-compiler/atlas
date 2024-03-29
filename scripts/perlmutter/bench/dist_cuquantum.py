import cusvaer
from qiskit import Aer, QuantumCircuit, transpile
from cusvaer.backends import StatevectorSimulator
import argparse
import time


def create_circuit(circuit_name, nqubits):
    file = "/global/homes/m/mingkuan/torque/circuit/MQTBench_" + str(
        nqubits) + "q/" + circuit_name + "_indep_qiskit_" + str(nqubits) + "_no_swap.qasm"
    circ = QuantumCircuit.from_qasm_file(file)
    circ.measure_all()
    return circ


def simulate_warm_up(nqubits, cusvaer_enable=True):
    circuit = create_circuit("qft", nqubits)

    # create options dictionary to override communicator settings and set precision
    options = {
        'cusvaer_comm_plugin_type': cusvaer.CommPluginType.MPI_MPICH,  # use MPICH MPI
        'cusvaer_comm_plugin_soname': 'libmpi.so',  # name of the MPI shared library
        'precision': 'double'  # double precision
    }

    # create StatevectorSimulator instead of using Aer.get_backend()
    if cusvaer_enable:
        simulator = StatevectorSimulator()
    else:
        simulator = Aer.get_backend('aer_simulator_statevector', cusvaer_enable=False)
        simulator.set_options(cusvaer_enable=False)
    simulator.set_options(**options)
    circuit = transpile(circuit, simulator)
    job = simulator.run(circuit)
    result = job.result()
    print(f'backend: {result.backend_name}')


def simulate(circuit_name, nqubits, cusvaer_enable=True):
    circuit = create_circuit(circuit_name, nqubits)

    # create options dictionary to override communicator settings and set precision
    options = {
        'cusvaer_comm_plugin_type': cusvaer.CommPluginType.MPI_MPICH,  # use MPICH MPI
        'cusvaer_comm_plugin_soname': 'libmpi.so',  # name of the MPI shared library
        'precision': 'double'  # double precision
    }

    if cusvaer_enable:
        # create StatevectorSimulator instead of using Aer.get_backend()
        simulator = StatevectorSimulator()
    else:
        simulator = Aer.get_backend('aer_simulator_statevector', cusvaer_enable=False)
        simulator.set_options(cusvaer_enable=False)
    simulator.set_options(**options)
    circuit = transpile(circuit, simulator)
    start_time = time.time()
    job = simulator.run(circuit)
    result = job.result()
    end_time = time.time()
    if cusvaer_enable:
        print(
            f"rank from `result`: {result.mpi_rank}, size: {result.num_mpi_processes}, time: {1000 * (end_time - start_time)}ms")
        # write timing result to files
        with open(f"/global/homes/m/mingkuan/result-srun/cusvaer/{circuit_name}_{nqubits}_{result.mpi_rank}.log",
                  "w") as f:
            f.write(f"{1000 * (end_time - start_time)}ms\n")
            # f.write(f"{1000 * result.time_taken}ms\n")
    else:
        print(
            f"rank from `result`: {result.metadata['mpi_rank']}, size: {result.metadata['num_mpi_processes']}, time: {1000 * (end_time - start_time)}ms")
        with open(
                f"/global/homes/m/mingkuan/result-srun/qiskit/{circuit_name}_{nqubits}_{result.metadata['mpi_rank']}.log",
                "w") as f:
            f.write(f"{1000 * (end_time - start_time)}ms\n")
            # f.write(f"{1000 * result.time_taken}ms\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='parse inputs')
    parser.add_argument('--nqubits', type=int, help='Number of qubits')
    parser.add_argument('--qiskit', dest='qiskit', action='store_true')
    parser.set_defaults(qiskit=False)
    args = parser.parse_args()
    cusvaer_enable = not args.qiskit
    simulate_warm_up(args.nqubits, cusvaer_enable)
    strings = ["ae", "dj", "ghz", "graphstate", "ising", "qft", "qpeexact", "qsvm", "su2random", "vqc", "wstate", "bv"]
    for s in strings:
        simulate(s, args.nqubits, cusvaer_enable)
