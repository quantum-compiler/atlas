#!/bin/bash

CONSTRAINT="gpu"
NUM_NODES=1
GPUS_PER_TASK=1
GPUS_PER_NODE=1

REGISTRY="nvcr.io/nvidia"
IMAGE_NAME="cuquantum-appliance"
IMAGE_TAG="23.03"

NUM_GPUS=$((${GPUS_PER_NODE}*${NUM_NODES}))
cd /global/homes/m/mingkuan/torque/scripts/permultter/bench
srun --account=m4138 \
     --qos=regular \
     --constraint=${CONSTRAINT} \
     --nodes=${NUM_NODES} \
     --gpus-per-node=${GPUS_PER_NODE} \
     --gpus-per-task=${GPUS_PER_TASK} \
     --gpu-bind=none \
     --ntasks=${NUM_GPUS} \
     --gpus=${NUM_GPUS} \
     shifter --image="${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}" \
     --module=cuda-mpich \
     python dist_cuquantum.py --nqubits 28



# python -m cuquantum_benchmarks circuit --frontend qiskit --backend cusvaer --benchmark general --name qft --nqubits 31 --ngpus 1 --precision double --cusvaer-global-index-bits 1 --cusvaer-p2p-device-bits 2 --cusvaer-comm-plugin-type mpi_mpich --cusvaer-comm-plugin-soname libmpi.so > /global/homes/m/mingkuan/result-srun/cusvaer/qft_31.log

