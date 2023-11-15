#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 2
#SBATCH --gpus-per-node=4

cd /pscratch/sd/z/zjia//nccl-tests
module load cray-mpich/8.1.25
# nccl/2.15.5-ofi
module load nccl
# cudatoolkit/11.7
module load cudatoolkit
conda activate qs

export MPICH_GPU_SUPPORT_ENABLED=1
# make MPI=1 MPI_HOME=$CRAY_MPICH_DIR CUDA_HOME=/opt/nvidia/hpc_sdk/Linux_x86_64/22.7/cuda/11.7 NCCL_HOME=/global/common/software/nersc/pm-2022q4/sw/nccl-2.15.5-ofi-r4
GPUSPERNODE=4
srun -u \
     --ntasks="$(( SLURM_JOB_NUM_NODES ))" \
     --ntasks-per-node=1\
     ./build/alltoall_perf -b 4G -e 4G -f 2 -d double -g ${GPUSPERNODE} -w 0 -n 10 > nccl-2nodes.log