#!/bin/bash
cd /pscratch/sd/z/zjia/qs/HyQuas/build
# Define the array of strings
strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate" "bv")

# Iterate over the strings
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
