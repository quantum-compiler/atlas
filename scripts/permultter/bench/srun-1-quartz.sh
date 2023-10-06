#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH --gpus-per-node=4

rm -rf ~/qs/torque/build/nodefile1
rm -rf ~/qs/result-srun/torque/*_30.log
rm -rf ~/qs/result-srun/torque/*_29.log
rm -rf ~/qs/result-srun/torque/*_28.log
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


mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qft --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qft_30.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qftentangled --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qftentangled_30.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ghz --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/ghz_30.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit graphstate --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/graphstate_30.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit twolocalrandom --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/twolocalrandom_30.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit realamprandom --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/realamprandom_30.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit su2random --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/su2random_30.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ae --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/ae_30.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeexactm --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qpeexact_30.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeinexactm --n 30 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qpeinexact_30.log

mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qft --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/qft_28.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qftentangled --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/qftentangled_28.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ghz --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/ghz_28.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit graphstate --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/graphstate_28.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit twolocalrandom --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/twolocalrandom_28.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit realamprandom --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/realamprandom_28.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit su2random --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/su2random_28.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ae --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/ae_28.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeexactm --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/qpeexact_28.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeinexactm --n 28 --local 28 --device 1 --use-ilp > ~/qs/result-srun/torque/qpeinexact_28.log

mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qft --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/qft_29.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qftentangled --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/qftentangled_29.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ghz --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/ghz_29.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit graphstate --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/graphstate_29.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit twolocalrandom --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/twolocalrandom_29.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit realamprandom --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/realamprandom_29.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit su2random --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/su2random_29.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ae --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/ae_29.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeexactm --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/qpeexact_29.log
mpirun -np 1 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeinexactm --n 29 --local 28 --device 2 --use-ilp > ~/qs/result-srun/torque/qpeinexact_29.log