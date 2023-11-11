#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 16
#SBATCH --gpus-per-node=4

rm -rf /pscratch/sd/z/zjia/qs/result-srun/torque/*_34.log
module load nccl
module load cudatoolkit
conda activate qs
export PATH=$PATH:/pscratch/sd/z/zjia/qs/torque/deps/quartz/external/HiGHS/build/bin

export MPICH_GPU_SUPPORT_ENABLED=1
GPUSPERNODE=4

srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qft --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qft_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qftentangled --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qftentangled_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ghz --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/ghz_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit graphstate --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/graphstate_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit twolocalrandom --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/twolocalrandom_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit realamprandom --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/realamprandom_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit su2random --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/su2random_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit ae --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/ae_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeexact --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qpeexact_34.log
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\ /pscratch/sd/z/zjia/qs/torque/build/examples/mpi-based/simulate --import-circuit qpeinexact --n 34 --local 28 --device 4 --use-ilp > /pscratch/sd/z/zjia/qs/result-srun/torque/qpeinexact_34.log