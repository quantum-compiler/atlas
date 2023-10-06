# Torque: High-performance GPU-based Quantum Circuit Simulator

## Installation

### Prerequisites
* cuQuantum (requires compute capability 7.0+)
* OpenMPI
* cmake >= 3.18
* NCCL
* CUDA

### Build Torque

#### 1. Set related environment variables in `config/config.linux`
We support two modes for simulation in Torque. First one is distributed GPU-based simulation (`USE_LEGION=OFF`). The other one is CPU-offload enabled simulation (`USE_LEGION=ON`), which support simulating more qubits on a single machine. Note that the second mode hasn't been tested for multi-node execution.

#### 2. Install the HiGHS solver in Quartz
```shell
cd deps/quartz/external/HiGHS
mkdir build
cd build
cmake ..
make
```
#### 2. Build and Install
```shell
cd $TORQUE_HOME
mkdir build
cd build
config/config.linux
make -j 12
```

## Run the Simulation
### Perlmutter

#### Sbatch
There are some `sbatch` scripts for running simulation using Torque in `scripts/perlmutter/bench`. Run them with:
```
sbatch xxx.sh
```

#### Interactive mode:
* Allocate nodes
```
salloc --nodes 2 -q regular --time 00:20:00 --constraint gpu --gpus-per-node 4 --account=YOUR_ACCOUNT
```
* Load modules

```
module use /global/common/software/m3169/perlmutter/modulefiles
module unload cray-mpich cray-libsci
module load openmpi
module load nccl
module load python
conda activate qs
export PATH=$PATH:$HiGHS_HOME/build/bin
```

* Distributed GPU-based simulation launched with `mpirun`, for example:

```
mpirun -np 2 -H $hosts $TORQUE_HOME/build/examples/mpi-based/simulate --import-circuit qft --n 31 --local 28 --device 4 --use-ilp
```

### AWS

#### For CPU-offload simulation:
The scalability test is running on AWS p3.8xlarge instance.
```
cd $TORQUE_HOME/build/examples/legion-based/`

./test -ll:gpu NUM_GPU -ll:fsize F_SIZE -ll:zsize Z_SIZE --local-qubits LOCAL_QUBITS_NUM --all-qubits ALL_QUBITS_NUM
```
* `-ll:gpu`: set the number of GPUs we have for the simulation.

* `-ll:fsize`: total gpu memory we have (e.g., 15000)

* `-ll:zsize`: zero-copy DRAM size (e.g., 100000)

* `--local-qubits`: the number of local qubits (for a 16G GPU, 28 local qubits at most)

* `--all-qubits`: the number of all the qubits.
