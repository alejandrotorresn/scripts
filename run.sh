#!/bin/bash
#SBATCH --partition=Viz
#SBATCH --error=OpenMP_%j.err
#SBATCH --out=OpenMP_%j.out
#SBATCH --job-name=test_OpenMP
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6

module load devtools/gcc/6.2.0

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
g++ -fopenmp code.cpp -o code

./code
