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

./vector_max 1234567 -k 1
./vector_max 56787439 -k 1
./vector_max 511 -k 1
./vector_max 57890231 -k 1

./vector_max 1234567 -k 2
./vector_max 56787439 -k 2
./vector_max 511 -k 2
./vector_max 57890231 -k 2

./vector_max 1234567 -k 3
./vector_max 56787439 -k 3
./vector_max 511 -k 3
./vector_max 57890231 -k 3

./vector_max 1234567 -k 4
./vector_max 56787439 -k 4
./vector_max 511 -k 4
./vector_max 57890321 -k 4
