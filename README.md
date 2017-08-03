# Barley_NAM_Parents
Processing scripts and documentation for the 2-row and 6-row NAM parents

### Sample Metadata and Raw Sample Downloading

Sample metadata is located under the dropbox folder "Barley Landrace Exome".
* `Barley_Sequence_Index_info.xlsx`: Matches capture name (ex: BSC14) with well number and index.
* `BSC_Summary_072715_v2.xlsx1`: Matches capture name (ex: BSC14) with well number and index.
* `Information of remaining 26 parents.xlsx`: Matches capture name with sample ID and index for 26 samples which were sequenced at a later date.
* `Plate Sample info.xlsx`: The most useful document for renaming information. Contains sample ID, row type, plate number, and well ID.
* `Successful parent line detailT3.xls`: The most useful document for parent metadata. Contains sample names, pedigree, row type, phenotype and genotype availability and more.

Samples were downloaded from `129.130.90.211/share_files/Barley_SeqCap_Samples/`

### Renaming

Using the documents described above, two lists were constructed: `NAM_parents_newnames.txt` and `NAM_parents_oldnames.txt`. The shell script `rename_from_lists.sh` was fed these lists and renamed the samples by going through the lists line-by-line. 

The raw samples that were split into multiple files followed a different renaming procedure. The shell script `cat_NAM_parents.sh` used the command `zcat` to combine and rename the files in one step.

After all samples were renamed and concatenated (if necessary), the timestamps were modified to match the timestamps located at `129.130.90.211/share_files/Barley_SeqCap_Samples/`. This was done using `touch_timestamp.sh`.

In total there were 179 distinct samples, but PI_599621 was sampled twice leading to 180 raw fastq files.
* PI_599621 is the version that was sequenced with the bulk of the parents on 2014-07-18
* 26_PI_599621 is the version that was sequenced in a smaller group of 26 on 2016-03-24

It was discovered later that some samples had been improperly named. In the renaming scripts you will see the wrong names, but in the final sample list, final vcf, and final BAM files you will see the correct names.
* CIho_39590 (incorrect) -> PI_039590 (correct)
* PI_392542 (incorrect) -> PI_392524 (correct)
* PI_294747 (incorrect) -> PI_294743 (correct)

A full list of the samples can be found under sequence_handling in `Final_BAMs.list`.

### sequence_handling

Raw fastq files were trimmed of adapters, read mapped, and converted to BAM format using the sequence_handling pipeline, [commit cca97ae](https://github.com/MorrellLAB/sequence_handling/commit/cca97aeed070f1c5e5252519988187fb95fd308f). Full documentation of this pipeline can be found [here](https://github.com/MorrellLAB/sequence_handling). The configuration file used to run the entire pipeline is found in `Config`. Indel realignment was not performed using sequence_handling, but rather with an individualized script (see below).

Note that since the version of sequence_handling that was used output incorrect SAM/BAM headers, a reheader script was used after indel realignment to give each BAM file the correct @RG line (see below). (This issue has been fixed in a later commit of sequence_handling.)

Coverage estimates were obtained using the Coverage_Mapping handler of [commit acc3405](https://github.com/MorrellLAB/sequence_handling/commit/acc3405505ee0d7e4d7c6c19d67dcc11b651e24d) of sequence_handling. The output summary statistics for each sample are located in `NAM_coverage_summary_stats.txt`. 

### SNP Calling Using GATK

SNP calling was performed using version 3.6 of GATK, version 0.1.14 of vcftools, and version 1.0.0 of vcflib. The following scripts were run in the listed order to produce the final VCF file.
1. GATK_RTC.job
2. Reheader_BAM.sh (to fix the @RG line)
3. GATK_IndelRealigner.job
4. GATK_HaplotypeCaller.job (task array)
5. GATK_GenotypeGVCFs.job (task array)
6. PreFiltering.job (to create a high confidence subset)
7. ConcatVCF.job
8. GATK_VariantRecalibrator.job
9. PostFiltering.job

Scripts 1, 3, 4, 5, and 8 were based off of [previous GATK scripts](https://github.com/MorrellLAB/Deleterious_GP/tree/master/Job_Scripts/Seq_Handling) by Dr. Thomas Kono for the Bad Mutations II project. 

Scripts 6, 7, 8, and 9 were based off of [this workflow](https://github.com/lilei1/MBE_samples) by Dr. Li Lei for the SNP calling of the samples from the Kono et al. 2016 MBE paper. Supplimentary python scripts used in PreFiltering and PostFiltering can be found below.
* [Convert_Parts_To_Pseudomolecules.py](https://github.com/MorrellLAB/Barley_Inversions/blob/master/analyses/GATK_SNP_call/scripts/Convert_Parts_To_Pseudomolecules.py)
* [HeterozogotesVcfFilter.py](https://github.com/MorrellLAB/Barley_Inversions/blob/master/analyses/GATK_SNP_call/scripts/HeterozogotesVcfFilter.py)
* [Filter_VCF_final.py](https://github.com/MorrellLAB/Barley_Inversions/blob/master/analyses/GATK_SNP_call/scripts/Filter_VCF_final.py)

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

... will be posted here once available.

### To-Do

* Rename files based on discordance matches
* Submit renamed FastQ files to the SRA
* Make exome capture VCF file available for download
* Make NSGC genotyping VCF file available for download
