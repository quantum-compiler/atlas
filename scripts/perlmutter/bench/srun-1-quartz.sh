#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH --gpus-per-node=4

module load cray-mpich/8.1.25
module load nccl
module load cudatoolkit
conda activate qs
export PATH=$PATH:/global/homes/m/mingkuan/torque/deps/quartz/external/HiGHS/build/bin
export MPICH_GPU_SUPPORT_ENABLED=1

# Define the array of strings
strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate")

# Iterate over the strings
for str in "${strings[@]}"; do
    # Execute the command with the current string
    /global/homes/m/mingkuan/torque/build2/examples/mpi-based/simulate --import-circuit ${str} --n 28 --local 28 --device 1 --use-ilp > /global/homes/m/mingkuan/result-srun/torque/${str}_28.log
done

for str in "${strings[@]}"; do
    # Execute the command with the current string
    /global/homes/m/mingkuan/torque/build2/examples/mpi-based/simulate --import-circuit ${str} --n 29 --local 28 --device 2 --use-ilp > /global/homes/m/mingkuan/result-srun/torque/${str}_29.log
done

for str in "${strings[@]}"; do
    # Execute the command with the current string
    /global/homes/m/mingkuan/torque/build2/examples/mpi-based/simulate --import-circuit ${str} --n 30 --local 28 --device 4 --use-ilp > /global/homes/m/mingkuan/result-srun/torque/${str}_30.log
done