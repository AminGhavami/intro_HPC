#!/bin/bash -l
#SBATCH --job-name motorbike
#SBATCH --time 0-00:10:00
#SBATCH --nodes 1
#SBATCH --ntasks 6
#SBATCH --cpus-per-task 1
#SBATCH --partition batch
#SBATCH --qos normal
#SBATCH --output SLURM_%x_%j.log
#SBATCH --error  SLURM_%x_%j.log

echo "== Starting job ${SLURM_JOBID} at $(date)"

# Load OpenFOAM
module load cae/OpenFOAM/8-foss-2020b
source $FOAM_BASH

# Go to the working directory (UPDATE ME!)
cd /home/users/mghavami/y2425-w03-debugging-and-profiling-AminGhavami/motorBike-MAP-06

# Set the number of processes in OpenFOAM settings
foamDictionary -entry numberOfSubdomains -set "${SLURM_NTASKS}" system/decomposeParDict

# Decompose the problem for parallel execution
decomposePar -force

# Run the OpenFOAM solver in parallel
map --profile mpirun -n "${SLURM_NTASKS}" simpleFoam -parallel

echo "== Finished job ${SLURM_JOBID} at $(date)"

