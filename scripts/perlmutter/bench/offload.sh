#!/bin/bash

mkdir -p logs

for gpu in 1 2 4; do
    ./../../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 200000 --local-qubits 26 --all-qubits 32 --circuit qft > logs/offload_${gpu}_32.log
    ./../../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 100000 --local-qubits 26 --all-qubits 31 --circuit qft > logs/offload_${gpu}_31.log
    ./../../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 70000 --local-qubits 26 --all-qubits 30 --circuit qft > logs/offload_${gpu}_30.log
    ./../../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 70000 --local-qubits 26 --all-qubits 29 --circuit qft > logs/offload_${gpu}_29.log
    ./../../../build/examples/legion-based/test -ll:gpu $gpu -ll:cpu $gpu -ll:fsize 15000 -ll:zsize 70000 --local-qubits 26 --all-qubits 28 --circuit qft > logs/offload_${gpu}_28.log
done
