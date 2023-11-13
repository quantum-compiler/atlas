#!/bin/bash

# Define the array of strings
strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate" "bv")

# Iterate over the strings
for str in "${strings[@]}"; do
    # Execute the command with the current string
    /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ${str} --n 28 --local 28 --device 1 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque-new/${str}_28.log
done

for str in "${strings[@]}"; do
    # Execute the command with the current string
    /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ${str} --n 29 --local 28 --device 2 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque-new/${str}_29.log
done

for str in "${strings[@]}"; do
    # Execute the command with the current string
    /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ${str} --n 30 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque-new/${str}_30.log
done