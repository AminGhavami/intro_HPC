#!/bin/bash
#SBATCH --job-name="rfm_osu_bw_same_core"
#SBATCH --ntasks=1
#SBATCH --output=rfm_job.out
#SBATCH --error=rfm_job.err
#SBATCH --time=0:10:0
#SBATCH --exclusive
#SBATCH --partition=batch
#SBATCH --qos=normal
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=1
module load EESSI/2023.06
unset SLURM_CPUS_PER_TASK
unset SLURM_TRES_PER_TASK
echo SLURM_CPUS_PER_TASK=$SLURM_CPUS_PER_TASK
echo SLURM_TRES_PER_TASK=$SLURM_TRES_PER_TASK
srun osu_bw
