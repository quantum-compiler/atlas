#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH --gpus-per-node=4

rm -rf /pscratch/sd/z/zjia/qs/result-srun/hyquas/*_30.log
rm -rf /pscratch/sd/z/zjia/qs/result-srun/hyquas/*_29.log
rm -rf /pscratch/sd/z/zjia/qs/result-srun/hyquas/*_28.log
module load nccl
module load cudatoolkit
conda activate qs
export HYQUAS_ROOT=/pscratch/sd/z/zjia/qs/HyQuas
export MPICH_GPU_SUPPORT_ENABLED=1

cd /pscratch/sd/z/zjia/qs/HyQuas/build
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/qft_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qft_30.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/qftentangled_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qftentangled_30.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/ghz_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ghz_30.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/graphstate_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_graphstate_30.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/twolocalrandom_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_twolocalrandom_30.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/realamprandom_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_realamprandom_30.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/su2random_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_su2random_30.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/ae_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ae_30.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/qpeexact_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeexact_30.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_30q/qpeinexact_indep_qiskit_30_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeinexact_30.log

srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/qft_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qft_29.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/qftentangled_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qftentangled_29.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/ghz_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ghz_29.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/graphstate_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_graphstate_29.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/twolocalrandom_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_twolocalrandom_29.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/realamprandom_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_realamprandom_29.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/su2random_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_su2random_29.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/ae_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ae_29.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/qpeexact_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeexact_29.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=2 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_29q/qpeinexact_indep_qiskit_29_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeinexact_29.log

srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/qft_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qft_28.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/qftentangled_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qftentangled_28.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/ghz_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ghz_28.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/graphstate_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_graphstate_28.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/twolocalrandom_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_twolocalrandom_28.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/realamprandom_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_realamprandom_28.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/su2random_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_su2random_28.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/ae_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ae_28.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/qpeexact_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeexact_28.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     -x GPUPerRank=1 ../scripts/gpu-bind.sh ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/qpeinexact_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeinexact_28.log

# mpirun -np 8 -H $hosts /pscratch/sd/z/zjia/qs/quartz/build/simulate --import-circuit twolocalrandom --n 33 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/quartz/twolocalrandom_30.log

# CUDA_VISIBLE_DEVICES=0 ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/ising_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ising_28.log
CUDA_VISIBLE_DEVICES=0 ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/ising_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ising_28.log
CUDA_VISIBLE_DEVICES=0 ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_28q/ising_indep_qiskit_28_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ising_28.log