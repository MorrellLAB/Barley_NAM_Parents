#!/bin/bash

#PBS -l mem=12gb,nodes=1:ppn=8,walltime=24:00:00
#PBS -m abe
#PBS -M wyant008@umn.edu

cd /panfs/roc/scratch/pmorrell/Barley

#   BSC 10

zcat BSC10-Ind2_CGATGT_L005_R1_001.fastq.gz \
BSC10-Ind2_CGATGT_L005_R1_002.fastq.gz \
BSC10-Ind2_CGATGT_L005_R1_003.fastq.gz \
BSC10-Ind2_CGATGT_L005_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_13743_R1.fastq

zcat BSC10-Ind2_CGATGT_L005_R2_001.fastq.gz \
BSC10-Ind2_CGATGT_L005_R2_002.fastq.gz \
BSC10-Ind2_CGATGT_L005_R2_003.fastq.gz \
BSC10-Ind2_CGATGT_L005_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_13743_R2.fastq

zcat BSC10-Ind4_TGACCA_L005_R1_001.fastq.gz \
BSC10-Ind4_TGACCA_L005_R1_002.fastq.gz \
BSC10-Ind4_TGACCA_L005_R1_003.fastq.gz \
BSC10-Ind4_TGACCA_L005_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_15362_R1.fastq

zcat BSC10-Ind4_TGACCA_L005_R2_001.fastq.gz \
BSC10-Ind4_TGACCA_L005_R2_002.fastq.gz \
BSC10-Ind4_TGACCA_L005_R2_003.fastq.gz \
BSC10-Ind4_TGACCA_L005_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_15362_R2.fastq

zcat BSC10-Ind5_ACAGTG_L005_R1_001.fastq.gz \
BSC10-Ind5_ACAGTG_L005_R1_002.fastq.gz \
BSC10-Ind5_ACAGTG_L005_R1_003.fastq.gz \
BSC10-Ind5_ACAGTG_L005_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_87844_R1.fastq

zcat BSC10-Ind5_ACAGTG_L005_R2_001.fastq.gz \
BSC10-Ind5_ACAGTG_L005_R2_002.fastq.gz \
BSC10-Ind5_ACAGTG_L005_R2_003.fastq.gz \
BSC10-Ind5_ACAGTG_L005_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_87844_R2.fastq

zcat BSC10-Ind6_GCCAAT_L005_R1_001.fastq.gz \
BSC10-Ind6_GCCAAT_L005_R1_002.fastq.gz \
BSC10-Ind6_GCCAAT_L005_R1_003.fastq.gz \
BSC10-Ind6_GCCAAT_L005_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_163409_R1.fastq

zcat BSC10-Ind6_GCCAAT_L005_R2_001.fastq.gz \
BSC10-Ind6_GCCAAT_L005_R2_002.fastq.gz \
BSC10-Ind6_GCCAAT_L005_R2_003.fastq.gz \
BSC10-Ind6_GCCAAT_L005_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_163409_R2.fastq

zcat BSC10-Ind7_CAGATC_L005_R1_001.fastq.gz \
BSC10-Ind7_CAGATC_L005_R1_002.fastq.gz \
BSC10-Ind7_CAGATC_L005_R1_003.fastq.gz \
BSC10-Ind7_CAGATC_L005_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_346387_R1.fastq

zcat BSC10-Ind7_CAGATC_L005_R2_001.fastq.gz \
BSC10-Ind7_CAGATC_L005_R2_002.fastq.gz \
BSC10-Ind7_CAGATC_L005_R2_003.fastq.gz \
BSC10-Ind7_CAGATC_L005_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_346387_R2.fastq

zcat BSC10-Ind12_CTTGTA_L005_R1_001.fastq.gz \
BSC10-Ind12_CTTGTA_L005_R1_002.fastq.gz \
BSC10-Ind12_CTTGTA_L005_R1_003.fastq.gz \
BSC10-Ind12_CTTGTA_L005_R1_004.fastq.gz \
BSC10-Ind12_CTTGTA_L005_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_283464_R1.fastq

zcat BSC10-Ind12_CTTGTA_L005_R2_001.fastq.gz \
BSC10-Ind12_CTTGTA_L005_R2_002.fastq.gz \
BSC10-Ind12_CTTGTA_L005_R2_003.fastq.gz \
BSC10-Ind12_CTTGTA_L005_R2_004.fastq.gz \
BSC10-Ind12_CTTGTA_L005_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_283464_R2.fastq

zcat BSC10-Ind13_AGTCAA_L005_R1_001.fastq.gz \
BSC10-Ind13_AGTCAA_L005_R1_002.fastq.gz \
BSC10-Ind13_AGTCAA_L005_R1_003.fastq.gz \
BSC10-Ind13_AGTCAA_L005_R1_004.fastq.gz \
BSC10-Ind13_AGTCAA_L005_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_320217_R1.fastq

zcat BSC10-Ind13_AGTCAA_L005_R2_001.fastq.gz \
BSC10-Ind13_AGTCAA_L005_R2_002.fastq.gz \
BSC10-Ind13_AGTCAA_L005_R2_003.fastq.gz \
BSC10-Ind13_AGTCAA_L005_R2_004.fastq.gz \
BSC10-Ind13_AGTCAA_L005_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_320217_R2.fastq

zcat BSC10-Ind14_AGTTCC_L005_R1_001.fastq.gz \
BSC10-Ind14_AGTTCC_L005_R1_002.fastq.gz \
BSC10-Ind14_AGTTCC_L005_R1_003.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_328052_R1.fastq

zcat BSC10-Ind14_AGTTCC_L005_R2_001.fastq.gz \
BSC10-Ind14_AGTTCC_L005_R2_002.fastq.gz \
BSC10-Ind14_AGTTCC_L005_R2_003.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_328052_R2.fastq

zcat BSC10-Ind16_CCGTCC_L005_R1_001.fastq.gz \
BSC10-Ind16_CCGTCC_L005_R1_002.fastq.gz \
BSC10-Ind16_CCGTCC_L005_R1_003.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_349896_R1.fastq

zcat BSC10-Ind16_CCGTCC_L005_R2_001.fastq.gz \
BSC10-Ind16_CCGTCC_L005_R2_002.fastq.gz \
BSC10-Ind16_CCGTCC_L005_R2_003.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_349896_R2.fastq

zcat BSC10-Ind18_GTCCGC_L005_R1_001.fastq.gz \
BSC10-Ind18_GTCCGC_L005_R1_002.fastq.gz \
BSC10-Ind18_GTCCGC_L005_R1_003.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_365547_R1.fastq

zcat BSC10-Ind18_GTCCGC_L005_R2_001.fastq.gz \
BSC10-Ind18_GTCCGC_L005_R2_002.fastq.gz \
BSC10-Ind18_GTCCGC_L005_R2_003.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_365547_R2.fastq

zcat BSC10-Ind19_GTGAAA_L005_R1_001.fastq.gz \
BSC10-Ind19_GTGAAA_L005_R1_002.fastq.gz \
BSC10-Ind19_GTGAAA_L005_R1_003.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_382860_R1.fastq

zcat BSC10-Ind19_GTGAAA_L005_R2_001.fastq.gz \
BSC10-Ind19_GTGAAA_L005_R2_002.fastq.gz \
BSC10-Ind19_GTGAAA_L005_R2_003.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_382860_R2.fastq

#   BSC 11

zcat BSC11-Ind2_CGATGT_L006_R1_001.fastq.gz \
BSC11-Ind2_CGATGT_L006_R1_002.fastq.gz \
BSC11-Ind2_CGATGT_L006_R1_003.fastq.gz \
BSC11-Ind2_CGATGT_L006_R1_004.fastq.gz \
BSC11-Ind2_CGATGT_L006_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_14052_R1.fastq

zcat BSC11-Ind2_CGATGT_L006_R2_001.fastq.gz \
BSC11-Ind2_CGATGT_L006_R2_002.fastq.gz \
BSC11-Ind2_CGATGT_L006_R2_003.fastq.gz \
BSC11-Ind2_CGATGT_L006_R2_004.fastq.gz \
BSC11-Ind2_CGATGT_L006_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_14052_R2.fastq

zcat BSC11-Ind4_TGACCA_L006_R1_001.fastq.gz \
BSC11-Ind4_TGACCA_L006_R1_002.fastq.gz \
BSC11-Ind4_TGACCA_L006_R1_003.fastq.gz \
BSC11-Ind4_TGACCA_L006_R1_004.fastq.gz \
BSC11-Ind4_TGACCA_L006_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_15600_R1.fastq

zcat BSC11-Ind4_TGACCA_L006_R2_001.fastq.gz \
BSC11-Ind4_TGACCA_L006_R2_002.fastq.gz \
BSC11-Ind4_TGACCA_L006_R2_003.fastq.gz \
BSC11-Ind4_TGACCA_L006_R2_004.fastq.gz \
BSC11-Ind4_TGACCA_L006_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_15600_R2.fastq

zcat BSC11-Ind5_ACAGTG_L006_R1_001.fastq.gz \
BSC11-Ind5_ACAGTG_L006_R1_002.fastq.gz \
BSC11-Ind5_ACAGTG_L006_R1_003.fastq.gz \
BSC11-Ind5_ACAGTG_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_94790_R1.fastq

zcat BSC11-Ind5_ACAGTG_L006_R2_001.fastq.gz \
BSC11-Ind5_ACAGTG_L006_R2_002.fastq.gz \
BSC11-Ind5_ACAGTG_L006_R2_003.fastq.gz \
BSC11-Ind5_ACAGTG_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_94790_R2.fastq

zcat BSC11-Ind6_GCCAAT_L006_R1_001.fastq.gz \
BSC11-Ind6_GCCAAT_L006_R1_002.fastq.gz \
BSC11-Ind6_GCCAAT_L006_R1_003.fastq.gz \
BSC11-Ind6_GCCAAT_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_173518_R1.fastq

zcat BSC11-Ind6_GCCAAT_L006_R2_001.fastq.gz \
BSC11-Ind6_GCCAAT_L006_R2_002.fastq.gz \
BSC11-Ind6_GCCAAT_L006_R2_003.fastq.gz \
BSC11-Ind6_GCCAAT_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_173518_R2.fastq

zcat BSC11-Ind7_CAGATC_L006_R1_001.fastq.gz \
BSC11-Ind7_CAGATC_L006_R1_002.fastq.gz \
BSC11-Ind7_CAGATC_L006_R1_003.fastq.gz \
BSC11-Ind7_CAGATC_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_268158_R1.fastq

zcat BSC11-Ind7_CAGATC_L006_R2_001.fastq.gz \
BSC11-Ind7_CAGATC_L006_R2_002.fastq.gz \
BSC11-Ind7_CAGATC_L006_R2_003.fastq.gz \
BSC11-Ind7_CAGATC_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_268158_R2.fastq

zcat BSC11-Ind12_CTTGTA_L006_R1_001.fastq.gz \
BSC11-Ind12_CTTGTA_L006_R1_002.fastq.gz \
BSC11-Ind12_CTTGTA_L006_R1_003.fastq.gz \
BSC11-Ind12_CTTGTA_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_285118_R1.fastq

zcat BSC11-Ind12_CTTGTA_L006_R2_001.fastq.gz \
BSC11-Ind12_CTTGTA_L006_R2_002.fastq.gz \
BSC11-Ind12_CTTGTA_L006_R2_003.fastq.gz \
BSC11-Ind12_CTTGTA_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_285118_R2.fastq

zcat BSC11-Ind13_AGTCAA_L006_R1_001.fastq.gz \
BSC11-Ind13_AGTCAA_L006_R1_002.fastq.gz \
BSC11-Ind13_AGTCAA_L006_R1_003.fastq.gz \
BSC11-Ind13_AGTCAA_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_294747_R1.fastq

zcat BSC11-Ind13_AGTCAA_L006_R2_001.fastq.gz \
BSC11-Ind13_AGTCAA_L006_R2_002.fastq.gz \
BSC11-Ind13_AGTCAA_L006_R2_003.fastq.gz \
BSC11-Ind13_AGTCAA_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_294747_R2.fastq

zcat BSC11-Ind14_AGTTCC_L006_R1_001.fastq.gz \
BSC11-Ind14_AGTTCC_L006_R1_002.fastq.gz \
BSC11-Ind14_AGTTCC_L006_R1_003.fastq.gz \
BSC11-Ind14_AGTTCC_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_328155_R1.fastq

zcat BSC11-Ind14_AGTTCC_L006_R2_001.fastq.gz \
BSC11-Ind14_AGTTCC_L006_R2_002.fastq.gz \
BSC11-Ind14_AGTTCC_L006_R2_003.fastq.gz \
BSC11-Ind14_AGTTCC_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_328155_R2.fastq

zcat BSC11-Ind15_ATGTCA_L006_R1_001.fastq.gz \
BSC11-Ind15_ATGTCA_L006_R1_002.fastq.gz \
BSC11-Ind15_ATGTCA_L006_R1_003.fastq.gz \
BSC11-Ind15_ATGTCA_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_330397_R1.fastq

zcat BSC11-Ind15_ATGTCA_L006_R2_001.fastq.gz \
BSC11-Ind15_ATGTCA_L006_R2_002.fastq.gz \
BSC11-Ind15_ATGTCA_L006_R2_003.fastq.gz \
BSC11-Ind15_ATGTCA_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_330397_R2.fastq

zcat BSC11-Ind16_CCGTCC_L006_R1_001.fastq.gz \
BSC11-Ind16_CCGTCC_L006_R1_002.fastq.gz \
BSC11-Ind16_CCGTCC_L006_R1_003.fastq.gz \
BSC11-Ind16_CCGTCC_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_350713_R1.fastq

zcat BSC11-Ind16_CCGTCC_L006_R2_001.fastq.gz \
BSC11-Ind16_CCGTCC_L006_R2_002.fastq.gz \
BSC11-Ind16_CCGTCC_L006_R2_003.fastq.gz \
BSC11-Ind16_CCGTCC_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_350713_R2.fastq

zcat BSC11-Ind18_GTCCGC_L006_R1_001.fastq.gz \
BSC11-Ind18_GTCCGC_L006_R1_002.fastq.gz \
BSC11-Ind18_GTCCGC_L006_R1_003.fastq.gz \
BSC11-Ind18_GTCCGC_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_371056_R1.fastq

zcat BSC11-Ind18_GTCCGC_L006_R2_001.fastq.gz \
BSC11-Ind18_GTCCGC_L006_R2_002.fastq.gz \
BSC11-Ind18_GTCCGC_L006_R2_003.fastq.gz \
BSC11-Ind18_GTCCGC_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_371056_R2.fastq

zcat BSC11-Ind19_GTGAAA_L006_R1_001.fastq.gz \
BSC11-Ind19_GTGAAA_L006_R1_002.fastq.gz \
BSC11-Ind19_GTGAAA_L006_R1_003.fastq.gz \
BSC11-Ind19_GTGAAA_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_384986_R1.fastq

zcat BSC11-Ind19_GTGAAA_L006_R2_001.fastq.gz \
BSC11-Ind19_GTGAAA_L006_R2_002.fastq.gz \
BSC11-Ind19_GTGAAA_L006_R2_003.fastq.gz \
BSC11-Ind19_GTGAAA_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_384986_R2.fastq

#   BSC 12

zcat BSC12-ind2_CGATGT_L006_R1_001.fastq.gz \
BSC12-ind2_CGATGT_L006_R1_002.fastq.gz \
BSC12-ind2_CGATGT_L006_R1_003.fastq.gz \
BSC12-ind2_CGATGT_L006_R1_004.fastq.gz \
BSC12-ind2_CGATGT_L006_R1_005.fastq.gz \
BSC12-ind2_CGATGT_L006_R1_006.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_14216_R1.fastq

zcat BSC12-ind2_CGATGT_L006_R2_001.fastq.gz \
BSC12-ind2_CGATGT_L006_R2_002.fastq.gz \
BSC12-ind2_CGATGT_L006_R2_003.fastq.gz \
BSC12-ind2_CGATGT_L006_R2_004.fastq.gz \
BSC12-ind2_CGATGT_L006_R2_005.fastq.gz \
BSC12-ind2_CGATGT_L006_R2_006.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_14216_R2.fastq

zcat BSC12-ind4_TGACCA_L006_R1_001.fastq.gz \
BSC12-ind4_TGACCA_L006_R1_002.fastq.gz \
BSC12-ind4_TGACCA_L006_R1_003.fastq.gz \
BSC12-ind4_TGACCA_L006_R1_004.fastq.gz \
BSC12-ind4_TGACCA_L006_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_39590_R1.fastq

zcat BSC12-ind4_TGACCA_L006_R2_001.fastq.gz \
BSC12-ind4_TGACCA_L006_R2_002.fastq.gz \
BSC12-ind4_TGACCA_L006_R2_003.fastq.gz \
BSC12-ind4_TGACCA_L006_R2_004.fastq.gz \
BSC12-ind4_TGACCA_L006_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/CIho_39590_R2.fastq

zcat BSC12-ind5_ACAGTG_L006_R1_001.fastq.gz \
BSC12-ind5_ACAGTG_L006_R1_002.fastq.gz \
BSC12-ind5_ACAGTG_L006_R1_003.fastq.gz \
BSC12-ind5_ACAGTG_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_94875_R1.fastq

zcat BSC12-ind5_ACAGTG_L006_R2_001.fastq.gz \
BSC12-ind5_ACAGTG_L006_R2_002.fastq.gz \
BSC12-ind5_ACAGTG_L006_R2_003.fastq.gz \
BSC12-ind5_ACAGTG_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_94875_R2.fastq

zcat BSC12-ind6_GCCAAT_L006_R1_001.fastq.gz \
BSC12-ind6_GCCAAT_L006_R1_002.fastq.gz \
BSC12-ind6_GCCAAT_L006_R1_003.fastq.gz \
BSC12-ind6_GCCAAT_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_174431_R1.fastq

zcat BSC12-ind6_GCCAAT_L006_R2_001.fastq.gz \
BSC12-ind6_GCCAAT_L006_R2_002.fastq.gz \
BSC12-ind6_GCCAAT_L006_R2_003.fastq.gz \
BSC12-ind6_GCCAAT_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_174431_R2.fastq

zcat BSC12-ind7_CAGATC_L006_R1_001.fastq.gz \
BSC12-ind7_CAGATC_L006_R1_002.fastq.gz \
BSC12-ind7_CAGATC_L006_R1_003.fastq.gz \
BSC12-ind7_CAGATC_L006_R1_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_268176_R1.fastq

zcat BSC12-ind7_CAGATC_L006_R2_001.fastq.gz \
BSC12-ind7_CAGATC_L006_R2_002.fastq.gz \
BSC12-ind7_CAGATC_L006_R2_003.fastq.gz \
BSC12-ind7_CAGATC_L006_R2_004.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_268176_R2.fastq

zcat BSC12-ind12_CTTGTA_L006_R1_001.fastq.gz \
BSC12-ind12_CTTGTA_L006_R1_002.fastq.gz \
BSC12-ind12_CTTGTA_L006_R1_003.fastq.gz \
BSC12-ind12_CTTGTA_L006_R1_004.fastq.gz \
BSC12-ind12_CTTGTA_L006_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_285636_R1.fastq

zcat BSC12-ind12_CTTGTA_L006_R2_001.fastq.gz \
BSC12-ind12_CTTGTA_L006_R2_002.fastq.gz \
BSC12-ind12_CTTGTA_L006_R2_003.fastq.gz \
BSC12-ind12_CTTGTA_L006_R2_004.fastq.gz \
BSC12-ind12_CTTGTA_L006_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_285636_R2.fastq

zcat BSC12-ind13_AGTCAA_L006_R1_001.fastq.gz \
BSC12-ind13_AGTCAA_L006_R1_002.fastq.gz \
BSC12-ind13_AGTCAA_L006_R1_003.fastq.gz \
BSC12-ind13_AGTCAA_L006_R1_004.fastq.gz \
BSC12-ind13_AGTCAA_L006_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_320227_R1.fastq

zcat BSC12-ind13_AGTCAA_L006_R2_001.fastq.gz \
BSC12-ind13_AGTCAA_L006_R2_002.fastq.gz \
BSC12-ind13_AGTCAA_L006_R2_003.fastq.gz \
BSC12-ind13_AGTCAA_L006_R2_004.fastq.gz \
BSC12-ind13_AGTCAA_L006_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_320227_R2.fastq

zcat BSC12-ind14_AGTTCC_L006_R1_001.fastq.gz \
BSC12-ind14_AGTTCC_L006_R1_002.fastq.gz \
BSC12-ind14_AGTTCC_L006_R1_003.fastq.gz \
BSC12-ind14_AGTTCC_L006_R1_004.fastq.gz \
BSC12-ind14_AGTTCC_L006_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_328336_R1.fastq

zcat BSC12-ind14_AGTTCC_L006_R2_001.fastq.gz \
BSC12-ind14_AGTTCC_L006_R2_002.fastq.gz \
BSC12-ind14_AGTTCC_L006_R2_003.fastq.gz \
BSC12-ind14_AGTTCC_L006_R2_004.fastq.gz \
BSC12-ind14_AGTTCC_L006_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_328336_R2.fastq

zcat BSC12-ind15_ATGTCA_L006_R1_001.fastq.gz \
BSC12-ind15_ATGTCA_L006_R1_002.fastq.gz \
BSC12-ind15_ATGTCA_L006_R1_003.fastq.gz \
BSC12-ind15_ATGTCA_L006_R1_004.fastq.gz \
BSC12-ind15_ATGTCA_L006_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_342139_R1.fastq

zcat BSC12-ind15_ATGTCA_L006_R2_001.fastq.gz \
BSC12-ind15_ATGTCA_L006_R2_002.fastq.gz \
BSC12-ind15_ATGTCA_L006_R2_003.fastq.gz \
BSC12-ind15_ATGTCA_L006_R2_004.fastq.gz \
BSC12-ind15_ATGTCA_L006_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_342139_R2.fastq

zcat BSC12-ind16_CCGTCC_L006_R1_001.fastq.gz \
BSC12-ind16_CCGTCC_L006_R1_002.fastq.gz \
BSC12-ind16_CCGTCC_L006_R1_003.fastq.gz \
BSC12-ind16_CCGTCC_L006_R1_004.fastq.gz \
BSC12-ind16_CCGTCC_L006_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_356719_R1.fastq

zcat BSC12-ind16_CCGTCC_L006_R2_001.fastq.gz \
BSC12-ind16_CCGTCC_L006_R2_002.fastq.gz \
BSC12-ind16_CCGTCC_L006_R2_003.fastq.gz \
BSC12-ind16_CCGTCC_L006_R2_004.fastq.gz \
BSC12-ind16_CCGTCC_L006_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_356719_R2.fastq

zcat BSC12-ind18_GTCCGC_L006_R1_001.fastq.gz \
BSC12-ind18_GTCCGC_L006_R1_002.fastq.gz \
BSC12-ind18_GTCCGC_L006_R1_003.fastq.gz \
BSC12-ind18_GTCCGC_L006_R1_004.fastq.gz \
BSC12-ind18_GTCCGC_L006_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_371248_R1.fastq

zcat BSC12-ind18_GTCCGC_L006_R2_001.fastq.gz \
BSC12-ind18_GTCCGC_L006_R2_002.fastq.gz \
BSC12-ind18_GTCCGC_L006_R2_003.fastq.gz \
BSC12-ind18_GTCCGC_L006_R2_004.fastq.gz \
BSC12-ind18_GTCCGC_L006_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_371248_R2.fastq

zcat BSC12-ind19_GTGAAA_L006_R1_001.fastq.gz \
BSC12-ind19_GTGAAA_L006_R1_002.fastq.gz \
BSC12-ind19_GTGAAA_L006_R1_003.fastq.gz \
BSC12-ind19_GTGAAA_L006_R1_004.fastq.gz \
BSC12-ind19_GTGAAA_L006_R1_005.fastq.gz \
BSC12-ind19_GTGAAA_L006_R1_006.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_386650_R1.fastq

zcat BSC12-ind19_GTGAAA_L006_R2_001.fastq.gz \
BSC12-ind19_GTGAAA_L006_R2_002.fastq.gz \
BSC12-ind19_GTGAAA_L006_R2_003.fastq.gz \
BSC12-ind19_GTGAAA_L006_R2_004.fastq.gz \
BSC12-ind19_GTGAAA_L006_R2_005.fastq.gz \
BSC12-ind19_GTGAAA_L006_R2_006.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_386650_R2.fastq

#   BSC26

zcat BSC26-ind2_CGATGT_L007_R1_001.fastq.gz \
BSC26-ind2_CGATGT_L007_R1_002.fastq.gz \
BSC26-ind2_CGATGT_L007_R1_003.fastq.gz \
BSC26-ind2_CGATGT_L007_R1_004.fastq.gz \
BSC26-ind2_CGATGT_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_467851_R1.fastq

zcat BSC26-ind2_CGATGT_L007_R2_001.fastq.gz \
BSC26-ind2_CGATGT_L007_R2_002.fastq.gz \
BSC26-ind2_CGATGT_L007_R2_003.fastq.gz \
BSC26-ind2_CGATGT_L007_R2_004.fastq.gz \
BSC26-ind2_CGATGT_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_467851_R2.fastq

zcat BSC26-ind4_TGACCA_L007_R1_001.fastq.gz \
BSC26-ind4_TGACCA_L007_R1_002.fastq.gz \
BSC26-ind4_TGACCA_L007_R1_003.fastq.gz \
BSC26-ind4_TGACCA_L007_R1_004.fastq.gz \
BSC26-ind4_TGACCA_L007_R1_005.fastq.gz \
BSC26-ind4_TGACCA_L007_R1_006.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_564487_R1.fastq

zcat BSC26-ind4_TGACCA_L007_R2_001.fastq.gz \
BSC26-ind4_TGACCA_L007_R2_002.fastq.gz \
BSC26-ind4_TGACCA_L007_R2_003.fastq.gz \
BSC26-ind4_TGACCA_L007_R2_004.fastq.gz \
BSC26-ind4_TGACCA_L007_R2_005.fastq.gz \
BSC26-ind4_TGACCA_L007_R2_006.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_564487_R2.fastq

zcat BSC26-ind5_ACAGTG_L007_R1_001.fastq.gz \
BSC26-ind5_ACAGTG_L007_R1_002.fastq.gz \
BSC26-ind5_ACAGTG_L007_R1_003.fastq.gz \
BSC26-ind5_ACAGTG_L007_R1_004.fastq.gz \
BSC26-ind5_ACAGTG_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_592267_R1.fastq

zcat BSC26-ind5_ACAGTG_L007_R2_001.fastq.gz \
BSC26-ind5_ACAGTG_L007_R2_002.fastq.gz \
BSC26-ind5_ACAGTG_L007_R2_003.fastq.gz \
BSC26-ind5_ACAGTG_L007_R2_004.fastq.gz \
BSC26-ind5_ACAGTG_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_592267_R2.fastq

zcat BSC26-ind6_GCCAAT_L007_R1_001.fastq.gz \
BSC26-ind6_GCCAAT_L007_R1_002.fastq.gz \
BSC26-ind6_GCCAAT_L007_R1_003.fastq.gz \
BSC26-ind6_GCCAAT_L007_R1_004.fastq.gz \
BSC26-ind6_GCCAAT_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_467729_R1.fastq

zcat BSC26-ind6_GCCAAT_L007_R2_001.fastq.gz \
BSC26-ind6_GCCAAT_L007_R2_002.fastq.gz \
BSC26-ind6_GCCAAT_L007_R2_003.fastq.gz \
BSC26-ind6_GCCAAT_L007_R2_004.fastq.gz \
BSC26-ind6_GCCAAT_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_467729_R2.fastq

zcat BSC26-ind7_CAGATC_L007_R1_001.fastq.gz \
BSC26-ind7_CAGATC_L007_R1_002.fastq.gz \
BSC26-ind7_CAGATC_L007_R1_003.fastq.gz \
BSC26-ind7_CAGATC_L007_R1_004.fastq.gz \
BSC26-ind7_CAGATC_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_486152_R1.fastq

zcat BSC26-ind7_CAGATC_L007_R2_001.fastq.gz \
BSC26-ind7_CAGATC_L007_R2_002.fastq.gz \
BSC26-ind7_CAGATC_L007_R2_003.fastq.gz \
BSC26-ind7_CAGATC_L007_R2_004.fastq.gz \
BSC26-ind7_CAGATC_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_486152_R2.fastq

zcat BSC26-ind12_CTTGTA_L007_R1_001.fastq.gz \
BSC26-ind12_CTTGTA_L007_R1_002.fastq.gz \
BSC26-ind12_CTTGTA_L007_R1_003.fastq.gz \
BSC26-ind12_CTTGTA_L007_R1_004.fastq.gz \
BSC26-ind12_CTTGTA_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_573878_R1.fastq

zcat BSC26-ind12_CTTGTA_L007_R2_001.fastq.gz \
BSC26-ind12_CTTGTA_L007_R2_002.fastq.gz \
BSC26-ind12_CTTGTA_L007_R2_003.fastq.gz \
BSC26-ind12_CTTGTA_L007_R2_004.fastq.gz \
BSC26-ind12_CTTGTA_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_573878_R2.fastq

zcat BSC26-ind13_AGTCAA_L007_R1_001.fastq.gz \
BSC26-ind13_AGTCAA_L007_R1_002.fastq.gz \
BSC26-ind13_AGTCAA_L007_R1_003.fastq.gz \
BSC26-ind13_AGTCAA_L007_R1_004.fastq.gz \
BSC26-ind13_AGTCAA_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_599625_R1.fastq

zcat BSC26-ind13_AGTCAA_L007_R2_001.fastq.gz \
BSC26-ind13_AGTCAA_L007_R2_002.fastq.gz \
BSC26-ind13_AGTCAA_L007_R2_003.fastq.gz \
BSC26-ind13_AGTCAA_L007_R2_004.fastq.gz \
BSC26-ind13_AGTCAA_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_599625_R2.fastq

zcat BSC26-ind14_AGTTCC_L007_R1_001.fastq.gz \
BSC26-ind14_AGTTCC_L007_R1_002.fastq.gz \
BSC26-ind14_AGTTCC_L007_R1_003.fastq.gz \
BSC26-ind14_AGTTCC_L007_R1_004.fastq.gz \
BSC26-ind14_AGTTCC_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_643283_R1.fastq

zcat BSC26-ind14_AGTTCC_L007_R2_001.fastq.gz \
BSC26-ind14_AGTTCC_L007_R2_002.fastq.gz \
BSC26-ind14_AGTTCC_L007_R2_003.fastq.gz \
BSC26-ind14_AGTTCC_L007_R2_004.fastq.gz \
BSC26-ind14_AGTTCC_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_643283_R2.fastq

zcat BSC26-ind15_ATGTCA_L007_R1_001.fastq.gz \
BSC26-ind15_ATGTCA_L007_R1_002.fastq.gz \
BSC26-ind15_ATGTCA_L007_R1_003.fastq.gz \
BSC26-ind15_ATGTCA_L007_R1_004.fastq.gz \
BSC26-ind15_ATGTCA_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_402037_R1.fastq

zcat BSC26-ind15_ATGTCA_L007_R2_001.fastq.gz \
BSC26-ind15_ATGTCA_L007_R2_002.fastq.gz \
BSC26-ind15_ATGTCA_L007_R2_003.fastq.gz \
BSC26-ind15_ATGTCA_L007_R2_004.fastq.gz \
BSC26-ind15_ATGTCA_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_402037_R2.fastq

zcat BSC26-ind16_CCGTCC_L007_R1_001.fastq.gz \
BSC26-ind16_CCGTCC_L007_R1_002.fastq.gz \
BSC26-ind16_CCGTCC_L007_R1_003.fastq.gz \
BSC26-ind16_CCGTCC_L007_R1_004.fastq.gz \
BSC26-ind16_CCGTCC_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_422233_R1.fastq

zcat BSC26-ind16_CCGTCC_L007_R2_001.fastq.gz \
BSC26-ind16_CCGTCC_L007_R2_002.fastq.gz \
BSC26-ind16_CCGTCC_L007_R2_003.fastq.gz \
BSC26-ind16_CCGTCC_L007_R2_004.fastq.gz \
BSC26-ind16_CCGTCC_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_422233_R2.fastq

zcat BSC26-ind18_GTCCGC_L007_R1_001.fastq.gz \
BSC26-ind18_GTCCGC_L007_R1_002.fastq.gz \
BSC26-ind18_GTCCGC_L007_R1_003.fastq.gz \
BSC26-ind18_GTCCGC_L007_R1_004.fastq.gz \
BSC26-ind18_GTCCGC_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_447054_R1.fastq

zcat BSC26-ind18_GTCCGC_L007_R2_001.fastq.gz \
BSC26-ind18_GTCCGC_L007_R2_002.fastq.gz \
BSC26-ind18_GTCCGC_L007_R2_003.fastq.gz \
BSC26-ind18_GTCCGC_L007_R2_004.fastq.gz \
BSC26-ind18_GTCCGC_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_447054_R2.fastq

zcat BSC26-ind19_GTGAAA_L007_R1_001.fastq.gz \
BSC26-ind19_GTGAAA_L007_R1_002.fastq.gz \
BSC26-ind19_GTGAAA_L007_R1_003.fastq.gz \
BSC26-ind19_GTGAAA_L007_R1_004.fastq.gz \
BSC26-ind19_GTGAAA_L007_R1_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_467733_R1.fastq

zcat BSC26-ind19_GTGAAA_L007_R2_001.fastq.gz \
BSC26-ind19_GTGAAA_L007_R2_002.fastq.gz \
BSC26-ind19_GTGAAA_L007_R2_003.fastq.gz \
BSC26-ind19_GTGAAA_L007_R2_004.fastq.gz \
BSC26-ind19_GTGAAA_L007_R2_005.fastq.gz \
> /panfs/roc/scratch/wyant008/barley_NAM_parents/PI_467733_R2.fastq