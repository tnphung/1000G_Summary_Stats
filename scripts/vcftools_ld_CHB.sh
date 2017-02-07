#!/bin/bash
#$ -cwd
#$ -V
#$ -N CHBld
#$ -l h_data=4G,time=24:00:00
#$ -M eplau
#$ -m ea
#$ -t 1-22:1

. /u/local/Modules/default/init/modules.sh
module load vcftools

chrNum=0${SGE_TASK_ID}
inVCF='/u/scratch/p/phung428/AnnabelProject/1000GVCF_subset_rmHomozygous/CHB/chr'${chrNum}'_10CHB_rmHomozygous.vcf'
out='/u/scratch/p/phung428/AnnabelProject/LD/CHB/chr'${chrNum}'_LD.txt'

vcftools --vcf ${inVCF} --hap-r2 --ld-window-bp 100000 > $out
