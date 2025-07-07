#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --time=1:00:00
#SBATCH --mem=16GB

#SBATCH --job-name=STAR_GG

module purge
module load star/intel/2.7.11a

## NOTE: Pls make a STAR_index directory first.
## This is for the Saccharomyces cerevisiae.

## GENOME GENERATE
STAR --runThreadN 16 --runMode genomeGenerate --genomeDir STAR_index \
--genomeFastaFiles SK1.genome.fa --genomeSAindexNbases 10


    # Index building via STAR. 2 threads, run in index generation mode.
        # Store in STAR_index folder and use provided .fa file
        # SA pre-indexing string of 12 bases \
            # (by my understanding, slice in groups of 12)
        # For this data, genomeSuffixLengthMax can be anything > 75, \
            # but the default is -1 (infinite) anyway
