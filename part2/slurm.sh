#!/bin/bash
# This is a template for a simple SLURM sbatch job script file
#
# First, SBATCH options - these could be passed via the command line, but this
# is more convenient
#
#SBATCH --job-name="GPU Assignment Test" #Name of the job which appears in squeue
#
#SBATCH --mail-type=ALL #What notifications are sent by email
#SBATCH --mail-user=ruffner@cs.virginia.edu
#
# Set up your user environment!!
#SBATCH --get-user-env
#
#SBATCH --error="my_job.err"                    # Where to write std err
#SBATCH --output="my_job.output"                # Where to write stdout

echo "32 3"
./2d_convolve 32 3 -k 1

echo "48 3"
./2d_convolve 48 3 -k 1

echo "128 3"
./2d_convolve 128 3 -k 1

echo "512 3"
./2d_convolve 512 3 -k 1

echo "1024 3"
./2d_convolve 1024 3 -k 1

echo "2048 3"
./2d_convolve 2048 3 -k 1

echo "4000 3"
./2d_convolve 4000 3 -k 1

echo "4000 5"
./2d_convolve 4000 5 -k 1

echo "4000 49"
./2d_convolve 4000 49 -k 1

echo "4000 99"
./2d_convolve 4000 99 -k 1

echo "4000 127"
./2d_convolve 4000 127 -k 1


