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
export PATH=$PATH:/pscratch/sd/z/zjia/qs/torque/deps/quartz/external/HiGHS/build/bin
export MPICH_GPU_SUPPORT_ENABLED=1
strings=("ae" "dj" "ghz" "graphstate" "ising" "qft" "qpeexact" "qsvm" "su2random" "vqc" "wstate" "bv")

for str in "${strings[@]}"; do
    # Execute the command with the current string
    srun -u \
         --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
         --ntasks-per-node=1\
         /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ${str} --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque-new/${str}_32.log
done

# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit dj --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/dj_32.log &&
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit wstate --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/wstate_32.log &&
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qft --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qft_32.log &&
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qftentangled --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qftentangled_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ghz --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/ghz_32.log &&
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit graphstate --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/graphstate_32.log &&
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit twolocalrandom --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/twolocalrandom_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit realamprandom --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/realamprandom_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit su2random --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/su2random_32.log &&
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ae --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/ae_32.log &&
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeexact --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qpeexact_32.log
# # srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeinexact --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qpeinexact_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit bv --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/bv_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ising --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/ising_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qsvm --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qsvm_32.log
# srun -u \
#      --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
#      --ntasks-per-node=1\
#      /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit vqc --n 32 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/vqc_32.log