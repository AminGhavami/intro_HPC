#!/bin/bash -l
#SBATCH --job-name motorbike
#SBATCH --time 0-00:10:00
#SBATCH --nodes 1
#SBATCH --ntasks 32
#SBATCH --cpus-per-task 1
#SBATCH --partition batch
#SBATCH --qos normal
#SBATCH --output SLURM_%x_%j.log
#SBATCH --error  SLURM_%x_%j.log

echo "== Starting job ${SLURM_JOBID} at $(date)"

# Setup EESSI environment (UPDATE ME!)
module load EESSI

# Load OpenFOAM from EESSI (UPDATE ME!)
module load OpenFOAM/11-foss-2023a
source $FOAM_BASH

# Go to the working directory (UPDATE ME!)
cd /home/users/mghavami/y2425-w04-software-installation-on-hpc-AminGhavami/eessi/motorBike-RUN-32/motorBike-RUN-32

# Cleanup previous OpenFOAM output
rm -rf postProcessing/ processor*/

# Set the number of processes in OpenFOAM settings
foamDictionary -entry numberOfSubdomains -set "${SLURM_NTASKS}" system/decomposeParDict

# Decompose the problem for parallel execution
decomposePar -force 

# Run the OpenFOAM solver in parallel
time mpirun -n "${SLURM_NTASKS}" foamRun -solver incompressibleFluid -parallel

echo "== Finished job ${SLURM_JOBID} at $(date)"

