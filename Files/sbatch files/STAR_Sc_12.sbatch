#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --time=6:00:00
#SBATCH --mem=32GB

#SBATCH --job-name=STAR_Scfinal

module purge
module load star/intel/2.7.11a

## This script is made to run one-by-one on 12 fastq files. For anything more than this, it is advisable to use arrays or splitting the fastq files into multiple folders and running this on each of the folders.
## Final perfected version of the STAR_Sc sbatches. This one properly runs on only the 12 files we need.


## READ ALIGN

for file in *.fastq
do
STAR --runMode alignReads --genomeDir ./STAR_index --outSAMtype BAM SortedByCoordinate --readFilesIn ${file} --runThreadN 16 --outFileNamePrefix STAR_SK
done

    # Reading alignments via STAR.
        # w/o specification, runMode argument defaults to alignReads.
        # (runThreadN appears to be for genome generation only.)


