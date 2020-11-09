#!/bin/bash
#----------------------------------------------------
# Example SLURM job script to run pure OpenMP applications
#----------------------------------------------------
#SBATCH -J dml_normal_job        # Job name
#SBATCH -o dml_normal_job.o%j    # Name of stdout output file
#SBATCH -e dml_normal_job.o%j    # Name of stderr output file
#SBATCH -p vis         # Queue name
#SBATCH -N 1              # Total number of nodes requested
#SBATCH -n 20             # Total number of mpi tasks requested
#SBATCH -t 00:15:00       # Run time (hh:mm:ss) - 1.5 hours
# The next line is required if the user has more than one project
#SBATCH -A 819373  # Project/allocation number

# This example will run on 1 node with 24 OpenMP threads

# Please do set the number of threads by yourself!
module load swr qt5
export OMP_NUM_THREADS=24
cd work/07199/scavic/lonestar/dmlTACC/ConnectingRod
cd 5mm
mkdir 1
cd 1

swr /work/07199/scavic/lonestar/MASTER/dml-ide/build/DMLIDE ../../case5mm.dml -t 0.000001 -r 0.001
