#!/bin/bash
#$ -cwd
#$ -V
#$ -N YRIld
#$ -l h_data=2G,time=12:00:00
#$ -M eplau
#$ -m ea
#$ -t 1-22:1

. /u/local/Modules/default/init/modules.sh
module load vcftools

chrNum=${SGE_TASK_ID}
inVCF='/u/scratch/p/phung428/AnnabelProject/1000GVCF_subset_rmHomozygous_rmSingletons_pass/YRI/chr'${chrNum}'_10YRI_rmHomozygous_rmSingletons_pass.vcf'
out='/u/scratch/p/phung428/AnnabelProject/LD/YRI/chr'${chrNum}'_LD'

vcftools --vcf ${inVCF} --hap-r2 --ld-window-bp 100000 --out ${out}
