#!/usr/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --time=1:00:00
#SBATCH --mem=16GB

#SBATCH --job-name=fastQC


module purge
module load fastqc/0.11.9


fastqc -t 6 -o ./fastqc/ *.fastq

# output = fastqc directory
# input = all .fastq files
# -t    Specifies the number of files which can be processed
                    simultaneously.  (6 here)
