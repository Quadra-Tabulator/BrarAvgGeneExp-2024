#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --time=1:00:00
#SBATCH --mem=32GB

#SBATCH --job-name=DSS09

module purge
module load star/intel/2.7.11a

## Part of Operation Duodenary Star System (DSS). This script is made to run on only one fastq file. Used in conjunction with the other DSS scripts.


## READ ALIGN


STAR --runMode alignReads --genomeDir ./STAR_index --outSAMtype BAM SortedByCoordinate --readFilesIn SRR387848.fastq --runThreadN 16 --outFileNamePrefix ./DuodenarySTARSystem/STAR_SK09


    # Reading alignments via STAR.
        # w/o specification, runMode argument defaults to alignReads.
        # (runThreadN appears to be for genome generation only.)