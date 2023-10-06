#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 16
#SBATCH --gpus-per-node=4

rm -rf ~/qs/torque/build/nodefile8
rm -rf ~/qs/result-srun/torque/*_34.log
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

mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qft --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qft_34.log
mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qftentangled --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qftentangled_34.log
mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ghz --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/ghz_34.log
mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit graphstate --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/graphstate_34.log
mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit twolocalrandom --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/twolocalrandom_34.log
mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit realamprandom --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/realamprandom_34.log
mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit su2random --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/su2random_34.log
mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit ae --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/ae_34.log
mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeexactm --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qpeexact_34.log
mpirun -np 16 -H $hosts ~/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeinexact --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/torque/qpeinexact_34.log