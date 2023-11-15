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
export HYQUAS_ROOT=/pscratch/sd/z/zjia/qs/HyQuas
export MPICH_GPU_SUPPORT_ENABLED=1

cd /pscratch/sd/z/zjia/qs/HyQuas/build

strings=("qsvm")

for str in "${strings[@]}"; do
    # Execute the command with the current string
    CUDA_VISIBLE_DEVICES=0 ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/${str}_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas-new/on_${str}_28.log
done

for str in "${strings[@]}"; do
    # Execute the command with the current string
    CUDA_VISIBLE_DEVICES=0,1 ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/${str}_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas-new/on_${str}_29.log
done

for str in "${strings[@]}"; do
    # Execute the command with the current string
    ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/${str}_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas-new/on_${str}_30.log
done