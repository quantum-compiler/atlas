#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 4
#SBATCH --gpus-per-node=4

rm -rf ~/qs/torque/build/nodefile4
rm -rf ~/qs/result-srun/torque/*_32.log
nodelist=$(scontrol show hostname $SLURM_NODELIST)
hosts=""
for HOST in $nodelist; do
    echo $HOST
    hosts="$hosts,$HOST"
done
echo $hosts
module use /global/common/software/m3169/perlmutter/modulefiles
module unload cray-mpich cray-libsci
module load openmpi
module load nccl
module load python
conda activate qs
export PATH=$PATH:/global/homes/z/zjia/qs/torque/deps/quartz/external/HiGHS/build/bin
export HYQUAS_ROOT=~/qs/HyQuas


mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qft --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qft_32.log
mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qftentangled --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qftentangled_32.log
mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ghz --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/ghz_32.log
mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit graphstate --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/graphstate_32.log
mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit twolocalrandom --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/twolocalrandom_32.log
mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit realamprandom --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/realamprandom_32.log
mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit su2random --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/su2random_32.log
mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ae --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/ae_32.log
mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeexactm --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qpeexact_32.log
mpirun -np 4 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeinexactm --n 32 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qpeinexact_32.log