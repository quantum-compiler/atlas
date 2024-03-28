#!/bin/bash

# Define the array of strings
strings=("ising" "qsvm" "vqc" "bv")
n_values=(28 29 30 31 32 33 34)

# Iterate over the strings
for str in "${strings[@]}"; do
    # Iterate over the n values
    for n in "${n_values[@]}"; do
        # Source and destination file paths
        src_file="/global/homes/m/mingkuan/torque/circuit/NWQBench/${str}_n${n}_no_swap.qasm"
        dest_file="/global/homes/m/mingkuan/torque/circuit/MQTBench_${n}q/${str}_indep_qiskit_${n}_no_swap.qasm"
        
        # Copy the file
        cp $src_file $dest_file
    done
done