#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 16
#SBATCH --gpus-per-node=4

module load cray-mpich/8.1.25
module load nccl
module load cudatoolkit
conda activate qs
export HYQUAS_ROOT=/pscratch/sd/z/zjia/qs/HyQuas
export MPICH_GPU_SUPPORT_ENABLED=1
cd /pscratch/sd/z/zjia/qs/HyQuas/build
strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate" "bv")

for str in "${strings[@]}"; do
    # Execute the command with the current string
    srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
    ./main /global/homes/m/mingkuan/torque/circuit/MQTBench_34q/${str}_indep_qiskit_34_no_swap.qasm > /global/homes/m/mingkuan/result-srun/hyquas-new/on_${str}_34.log
done