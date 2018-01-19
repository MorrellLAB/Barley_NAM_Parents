# Barley_NAM_Parents
Processing scripts and documentation for the 2-row and 6-row NAM parents

### Sample Metadata and Raw Sample Downloading

Sample metadata is located in spreadsheets under [raw_samples](https://github.com/MorrellLAB/Barley_NAM_Parents/tree/master/raw_samples).
* [Barley_Sequence_Index_info.xlsx](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/raw_samples/Barley_Sequence_Index_info.xlsx): Matches capture name (ex: BSC14) with well number and index.
* [BSC_Summary_072715_v2.xlsx1](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/raw_samples/BSC_Sumary_072715_v2.xlsx): Matches capture name (ex: BSC14) with well number and index.
* [Information_of_remaining_26_parents.xlsx](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/raw_samples/Information_of_remaining_26_parents.xlsx): Matches capture name with sample ID and index for 26 samples which were sequenced at a later date.
* [Plate_Sample_info.xlsx](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/raw_samples/Plate_Sample_info.xlsx): The most useful document for renaming information. Contains sample ID, row type, plate number, and well ID.
* [Successful_parent_line_detailT3.xls](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/raw_samples/Successful_parent_line_detailT3.xls): The most useful document for parent metadata. Contains sample names, pedigree, row type, phenotype and genotype availability and more.

Samples were downloaded from [here](129.130.90.211/share_files/Barley_SeqCap_Samples/).

### Renaming

Using the documents described above, two lists were constructed: [NAM_parents_newnames.txt](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/renaming/NAM_parents_newnames.txt) and [NAM_parents_oldnames.txt](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/renaming/NAM_parents_oldnames.txt). The shell script [rename_from_lists.sh](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/renaming/rename_from_lists.sh) was fed these lists and renamed the samples by going through the lists line-by-line. 

The raw samples that were split into multiple files followed a different renaming procedure. The shell script [cat_NAM_parents.sh](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/renaming/cat_NAM_parents.sh) used the command `zcat` to combine and rename the files in one step.

After all samples were renamed and concatenated (if necessary), the timestamps were modified to match the timestamps located [here](129.130.90.211/share_files/Barley_SeqCap_Samples/). This was done using [touch_timestamp.sh](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/renaming/touch_timestamp.sh).

In total there were 180 distinct samples, but PI_599621 was sampled twice leading to 181 raw FASTQ files.
* PI_599621 is the version that was sequenced with the bulk of the parents on 2014-07-18
* 26_PI_599621 is the version that was sequenced in a smaller group of 26 on 2016-03-24

It was discovered later that some samples had been improperly named. In the renaming scripts you will see the wrong names, but in the final sample list, final VCF, and final BAM files you will see the correct names.
* CIho_39590 (incorrect) -> PI_039590 (correct)
* PI_392542 (incorrect) -> PI_392524 (correct)
* PI_294747 (incorrect) -> PI_294743 (correct)

A full list of the samples can be found under [sequence_handling](https://github.com/MorrellLAB/Barley_NAM_Parents/tree/master/sequence_handling) in [Final_BAMs.list](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/sequence_handling/Final_BAMs.list).

### sequence_handling: FASTQ to VCF

Raw FASTQ files were trimmed of adapters, read mapped, deduplicated, and converted to BAM format using the sequence_handling pipeline. The configuration file used to run the entire pipeline is found in [Config](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/sequence_handling/Config), updated to match [commit aca9041](https://github.com/MorrellLAB/sequence_handling/commit/aca9041ecaa79fe597ef9a5a3e721cc0a818e581). Full documentation on sequence_handling can be found [here](https://github.com/MorrellLAB/sequence_handling/wiki). The following handlers were executed in the listed order:

1. Quality_Assessment [commit 579ebd4](https://github.com/MorrellLAB/sequence_handling/commit/579ebd4db9d6c37fa274354a4069f8190da33a52): Quality summary output for each FASTQ is located in [NAM_quality_summary.txt](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/sequence_handling/NAM_quality_summary.txt)
2. Adapter_Trimming [commit cca97ae](https://github.com/MorrellLAB/sequence_handling/commit/cca97aeed070f1c5e5252519988187fb95fd308f)
3. Read_Mapping [commit cca97ae](https://github.com/MorrellLAB/sequence_handling/commit/cca97aeed070f1c5e5252519988187fb95fd308f)
4. SAM_Processing [commit cca97ae](https://github.com/MorrellLAB/sequence_handling/commit/cca97aeed070f1c5e5252519988187fb95fd308f)
5. Coverage_Mapping [commit acc3405](https://github.com/MorrellLAB/sequence_handling/commit/acc3405505ee0d7e4d7c6c19d67dcc11b651e24d): Coverage summary output for each BAM is located in [NAM_coverage_summary.txt](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/sequence_handling/NAM_coverage_summary.txt)

The beginning stages of variant discovery were not performed using sequence_handling since the pipeline was still under development at the time. Because previous versions of sequence_handling output incorrect SAM/BAM headers, a reheader script was used before indel realignment to give each BAM file the correct @RG line. The following custom scripts were executed in the listed order:

6. [GATK_RTC.job](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/sequence_handling/SNP_Calling_Scripts/GATK_RTC.job)
7. [Reheader_BAM.sh](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/sequence_handling/SNP_Calling_Scripts/Reheader_BAM.sh)
8. [GATK_IndelRealigner.job](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/sequence_handling/SNP_Calling_Scripts/GATK_IndelRealigner.job)
9. [GATK_HaplotypeCaller.job](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/sequence_handling/SNP_Calling_Scripts/GATK_HaplotypeCaller.job)
10. [GATK_GenotypeGVCFs.job](https://github.com/MorrellLAB/Barley_NAM_Parents/blob/master/sequence_handling/SNP_Calling_Scripts/GATK_GenotypeGVCFs.job)

SNP calling was performed using version 3.6 of GATK, version 0.1.14 of vcftools, and version 1.0.0 of vcflib. The following handlers of sequence_handling were executed in the listed order to produce the final VCF file:

11. Create_HC_Subset [commit aca9041](https://github.com/MorrellLAB/sequence_handling/commit/aca9041ecaa79fe597ef9a5a3e721cc0a818e581): DP and GQ summaries for before and after filtering are located [here](https://github.com/MorrellLAB/Barley_NAM_Parents/tree/master/sequence_handling/Create_HC_Subset)
12. Variant_Recalibrator [commit aca9041](https://github.com/MorrellLAB/sequence_handling/commit/aca9041ecaa79fe597ef9a5a3e721cc0a818e581)
13. Variant_Filtering [commit aca9041](https://github.com/MorrellLAB/sequence_handling/commit/aca9041ecaa79fe597ef9a5a3e721cc0a818e581): DP and GQ summaries for before and after filtering are located [here](https://github.com/MorrellLAB/Barley_NAM_Parents/tree/master/sequence_handling/Variant_Filtering)
14. Variant_Analysis [commit aca9041](https://github.com/MorrellLAB/sequence_handling/commit/aca9041ecaa79fe597ef9a5a3e721cc0a818e581): Heterozygosity, missingness, Ts/Tv, MAF histogram, population genetics statistics at 18 loci, and SNP count outputs are located [here](https://github.com/MorrellLAB/Barley_NAM_Parents/tree/master/sequence_handling/Variant_Analysis)

The [9k genotyping markers](https://github.com/lilei1/9k_BOPA_SNP/blob/master/BOPA_9k_vcf_Morex_refv1/sorted_all_9k_masked_90idt.vcf) and the [MBE VCF file]() (Not available yet?) were used as resource files for Variant_Recalibrator.

The final VCF file can be downloaded [here](). (Not available yet)

### Comparison to Genotyping Data

The final SNP calls were compared to 9k iSelect genotyping for the same lines using version 0.1.14 of vcftools to verify the identity of each sample. The [ALCHEMY](http://alchemy.sourceforge.net/) genotyping data for the NSGC landraces from [Poets et al. 2015](http://www.genomebiology.com/2015/16/1/173) was converted into VCF format using [this tutorial](https://github.com/MorrellLAB/Barley_Inversions/blob/master/analyses/SNP_valiadation/tutorial_alchemy2vcf.md) by Dr. Li Lei. This NSGC landraces genotyping VCF file is available for download [here](). (Not available yet) [9k SNPs with no BLAST hits](https://github.com/lilei1/9k_BOPA_SNP/blob/master/no_blast_hits_SNPs/no_blast_hits_9k_snpID) were filtered out and not used for comparison. The results of the comparison can be found under `discordance_exome_vs_alchemy.txt`. 

```shell
vcftools --vcf Barley_NAM_Parents_Final.vcf\
	 --diff NAM_9k_good_SNPs.vcf\
	 --diff-indv-discordance\
	 --diff-indv-map exome_to_alchemy_map.txt\
	 --out discordance_exome_vs_alchemy
```
Seven samples were above the 10% threshold for discordance:

Sample Name | Discordance | Row Type
--- | --- | ---
PI_328015 | 43.3% | 2-row
CIho_5989 | 43.2% | 2-row
PI_640220 | 41.2% | 6-row
PI_412946 | 37.0% | 2-row
PI_392491 | 36.1% | 2-row
PI_436149 | 31.0% | 2-row
PI_223883 | 16.3% | 6-row

The exome capture SNP calls for the seven discordant samples were filtered to only the good 9k sites (excluding the [9k SNPs with no BLAST hits](https://github.com/lilei1/9k_BOPA_SNP/blob/master/no_blast_hits_SNPs/no_blast_hits_9k_snpID)) and merged with the VCF file for the NSGC landraces. PLINK was used to create a pairwise similarity matrix of the merged VCF file to determine the likely identity of the discordant NAM parents. 

```
plink --vcf discordant_combined.vcf --allow-extra-chr --distance square ibs
```

R was used to find all NSGC core lines that were at least 90% similar to one of the discordant lines.

```
ibs <- read.table("plink.mibs", header=FALSE)
headers <- read.table("plink_ids.txt")
colnames(ibs) <- headers
rownames(ibs) <- t(headers)
sort(ibs[2453,])
sort(ibs[2452,])
sort(ibs[2451,])
sort(ibs[2450,])
sort(ibs[2449,])
sort(ibs[2448,])
sort(ibs[2447,])
```

Three of the seven samples appear to have been mislabeled as another NAM parent (see below). The other four discordant samples have multiple matches to lines outside of the NAM parents population and no matches within it, thus their true identities are unclear.

Sample Name | Likely Identity | Concordance with Likely Identity 
--- | --- | ---
PI_392491 | PI_412946 | 95.5%
PI_412946 | PI_436149 | 97.0%
PI_640220 | PI_392491 | 97.1%

### SRA Accession Numbers

Will be posted here once available.

### To-Do

* Rename files based on discordance matches
* Submit renamed FastQ files to the SRA
* Make exome capture VCF file available for download
* Make NSGC genotyping VCF file available for download
* Make Variant_Recalibrator MBE resource file available for download
