#!/bin/bash
#$ -cwd
#$ -V
#$ -N convertYRI_chr10_s
#$ -l highp,h_data=2G,time=48:00:00
#$ -M eplau
#$ -m ea
#$ -t 4-14:1

part=${SGE_TASK_ID}
chrNum=10

python /u/project/klohmuel/tanya_data/1000G_Summary_Stats/scripts/convert_physical_to_genetic.py --genetic_map /u/home/p/phung428/tanya_data_storage/1000G_Summary_Stats/data/decode_genetic_map/interpolate_genetic_map_YRI/YRI/chr${chrNum}_average_noncarrier.gmap_interpolate_YRI.txt --VCFtoolsout /u/home/p/phung428/tanya_data_storage/1000G_Summary_Stats/results/LD_geno/VCFtools_out_rm.nan/YRI/chr${chrNum}_split/chr${chrNum}_part_${part}_s --outfile /u/home/p/phung428/tanya_data_storage/1000G_Summary_Stats/results/LD_geno/VCFtools_out_rm.nan_geneticMap_modify/YRI/chr${chrNum}/chr${chrNum}_LD_genetic_part_${part}
