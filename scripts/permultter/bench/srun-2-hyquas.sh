#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 2
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
    ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/${str}_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas-new/on_${str}_31.log
done

# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/qft_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qft_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/qftentangled_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qftentangled_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/ghz_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ghz_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/graphstate_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_graphstate_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/twolocalrandom_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_twolocalrandom_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/realamprandom_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_realamprandom_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/su2random_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_su2random_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/ae_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ae_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/qpeexact_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeexact_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_31q/qpeinexact_indep_qiskit_31_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeinexact_31.log

# # mpirun -np 8 -npernode 1 -hostfile nodefile /pscratch/sd/z/zjia/qs/quartz/build/simulate --import-circuit twolocalrandom --n 33 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/quartz/twolocalrandom_31.log