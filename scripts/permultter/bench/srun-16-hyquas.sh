#!/bin/bash
#SBATCH -A m4138
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -N 16
#SBATCH --gpus-per-node=4

rm -rf ~/qs/HyQuas/build/nodefile8
rm -rf ~/qs/result-srun/hyquas/*_34.log
nodelist=$(scontrol show hostname $SLURM_NODELIST)
hosts=""
for HOST in $nodelist; do
    echo $HOST
    hosts="$hosts,$HOST"
done
echo $hosts
module use /global/common/software/m3169/perlmutter/modulefiles
module unload cray-mpich cray-libsci
module load openmpi
module load nccl
module load python
conda activate qs
export PATH=$PATH:/global/homes/z/zjia/qs/quartz/external/HiGHS/build/bin
export HYQUAS_ROOT=~/qs/HyQuas

cd ~/qs/HyQuas/build
`which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/ghz_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_ghz_34.log
# `which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/qftentangled_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_qftentangled_34.log
# `which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/ghz_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_ghz_34.log
# `which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/graphstate_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_graphstate_34.log
# `which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/twolocalrandom_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_twolocalrandom_34.log
# `which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/realamprandom_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_realamprandom_34.log
# `which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/su2random_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_su2random_34.log
# `which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/aem_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_ae_34.log
# `which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/qpeexactm_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_qpeexact_34.log
# `which mpirun` -np 16 -H $hosts ./main ../../quartz/circuit/MQTBench_34q/qpeinexactm_indep_qiskit_34.qasm > ~/qs/result-srun/hyquas/on_qpeinexact_34.log

# mpirun -np 16 -H $hosts ~/qs/quartz/build/simulate --import-circuit twolocalrandom --n 34 --local 28 --device 4 --use-ilp > ~/qs/result-srun/quartz/twolocalrandom_34.log