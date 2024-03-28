#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 2
#SBATCH --gpus-per-node=4

# module load cray-mpich/8.1.25
module load nccl
# module load cudatoolkit
conda activate torque
export PATH=$PATH:/global/homes/m/mingkuan/torque/deps/quartz/external/HiGHS/build/bin
export MPICH_GPU_SUPPORT_ENABLED=1
strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate" "bv")

for str in "${strings[@]}"; do
    # Execute the command with the current string
    srun -u \
         --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
         --ntasks-per-node=1\
         /global/homes/m/mingkuan/torque/build/examples/mpi-based/simulate --import-circuit ${str} --n 31 --local 28 --device 4 --use-ilp > /global/homes/m/mingkuan/result-srun/torque-new/${str}_31.log
done