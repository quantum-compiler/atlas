#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 8
#SBATCH --gpus-per-node=4

rm -rf /pscratch/sd/z/zjia/qs/result-srun/hyquas/*_33.log
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
    ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/${str}_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas-new/on_${str}_33.log
done

# cd /pscratch/sd/z/zjia/qs/HyQuas/build
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/qft_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qft_33.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/qftentangled_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qftentangled_33.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/ghz_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ghz_33.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/graphstate_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_graphstate_33.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/twolocalrandom_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_twolocalrandom_33.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/realamprandom_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_realamprandom_33.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/su2random_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_su2random_33.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/ae_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_ae_33.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/qpeexact_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeexact_33.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      ./main /pscratch/sd/z/zjia/qs/torque/circuit/MQTBench_33q/qpeinexact_indep_qiskit_33_no_swap.qasm > /pscratch/sd/z/zjia/qs/result-srun/hyquas/on_qpeinexact_33.log

# # mpirun -np 8 -H $hosts /pscratch/sd/z/zjia/qs/quartz/build/simulate --import-circuit twolocalrandom --n 33 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/quartz/twolocalrandom_33.log