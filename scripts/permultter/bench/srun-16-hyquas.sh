#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 16
#SBATCH --gpus-per-node=4

rm -rf /pscratch/sd/z/zjia/qs/result-srun/hyquas/*_34.log
module load nccl
module load cudatoolkit
conda activate qs
export HYQUAS_ROOT=/pscratch/sd/z/zjia/qs/HyQuas
export MPICH_GPU_SUPPORT_ENABLED=1

cd /pscratch/sd/z/zjia/qs/HyQuas/build
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/qft_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qft_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/qftentangled_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qftentangled_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/ghz_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ghz_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/graphstate_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_graphstate_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/twolocalrandom_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_twolocalrandom_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/realamprandom_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_realamprandom_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/su2random_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_su2random_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/aem_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ae_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/qpeexactm_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeexact_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_34q/qpeinexactm_indep_qiskit_34_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeinexact_34.log

# mpirun -np 16 -H $hosts /pscratch/sd/z/zjia/qs/quartz/build/simulate --import-circuit twolocalrandom --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/quartz/twolocalrandom_34.log