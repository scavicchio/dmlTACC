#!/bin/bash
#----------------------------------------------------
# Example SLURM job script to run pure OpenMP applications
#----------------------------------------------------
#SBATCH -J dml_2       # Job name
#SBATCH -o dml_2.o%j    # Name of stdout output file
#SBATCH -e dml_2.o%j    # Name of stderr output file
#SBATCH -p v100         # Queue name
#SBATCH -N 1              # Total number of nodes requested
#SBATCH -n 1             # Total number of mpi tasks requested
#SBATCH -t 2:00:00       # Run time (hh:mm:ss) - 1.5 hours
# This example will run on 1 node with 24 OpenMP threads
# Please do set the number of threads by yourself!
# Launch the pure OpenMP application directly
cd .. /scratch/07199/scavic/dmlTACC/ConnectingRod/random/2

srun ./home/07199/scavic/dml-ide/build/DMLIDE 

