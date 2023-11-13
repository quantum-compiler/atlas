#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 4
#SBATCH --gpus-per-node=4

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
    ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/${str}_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas-new/on_${str}_32.log
done


# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/qft_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qft_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/qftentangled_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qftentangled_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/ghz_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ghz_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/graphstate_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_graphstate_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/twolocalrandom_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_twolocalrandom_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/realamprandom_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_realamprandom_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/su2random_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_su2random_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/ae_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ae_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/qpeexact_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeexact_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_32q/qpeinexact_indep_qiskit_32_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeinexact_32.log

# # mpirun -np 8 -H $hosts /pscratch/sd/z/zjia/qs/quartz/build/simulate --import-circuit twolocalrandom --n 33 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/quartz/twolocalrandom_32.log