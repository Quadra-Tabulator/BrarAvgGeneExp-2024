#!/bin/bash
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --time=2:00:00
#SBATCH --mem=16GB

#SBATCH --job-name=srr-grab-dump

module purge
module load sra-tools/3.1.0


# WARNING: This code requires the input .txt file to have terminating linefeed, i.e. an extra linebreak or two at the end. Otherwise lines might be omitted.

cat SRR_Acc_List_REAL.txt | while read code
do
fasterq-dump $code
done






# Description: pipe output of reading the list into while read.
    # read command will read every word and save it into a variable code
    # run fasterq-dump on every variable code

