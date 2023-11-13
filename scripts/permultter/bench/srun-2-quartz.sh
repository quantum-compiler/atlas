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
export PATH=$PATH:/pscratch/sd/z/zjia/qs/torque/deps/quartz/external/HiGHS/build/bin
export MPICH_GPU_SUPPORT_ENABLED=1
strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate" "bv")

for str in "${strings[@]}"; do
    # Execute the command with the current string
    srun -u \
         --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
         --ntasks-per-node=1\
         /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ${str} --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque-new/${str}_31.log
done
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qft --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qft_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qftentangled --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qftentangled_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ghz --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/ghz_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit graphstate --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/graphstate_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit twolocalrandom --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/twolocalrandom_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit realamprandom --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/realamprandom_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit su2random --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/su2random_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ae --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/ae_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeexact --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qpeexact_31.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeinexact --n 31 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qpeinexact_31.log