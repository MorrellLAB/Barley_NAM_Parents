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
* PI_599621 is the version that was sequenced with the bulk of the parents
* 26_PI_599621 is the version that was sequenced at a later date in a smaller group of 26

A full list of the samples can be found in `Final_BAMs.list`.

### sequence_handling

Raw fastq files were trimmed of adapters, read mapped, and converted to BAM format using the sequence_handling pipeline, [commit cca97ae](https://github.com/MorrellLAB/sequence_handling/commit/cca97aeed070f1c5e5252519988187fb95fd308f). Full documentation of this pipeline can be found [here](https://github.com/MorrellLAB/sequence_handling). The configuration file used to run the entire pipeline is found in `Config`. Indel realignment was not performed using sequence_handling, but rather with an individualized script (see below).

Note that since the version of sequence_handling that was used output incorrect SAM/BAM headers, a reheader script was used after indel realignment to give each BAM file the correct @RG line (see below). (This issue has been fixed in a later commit of sequence_handling.)

### SNP Calling Using GATK

! Section incomplete !

SNP calling was performed using GATK. The following scripts were run in the listed order to produce the output.
1. RTC
2. Indel_Realigner
3. Haplotype Caller (task array)
4. Genotype_GVCFs (task array)

### To-Do

* Finish SNP calling
* Store renamed fastq files in S3 (???)
* Submit final BAM files to the SRA
* Check final SNPs to verify accuracy of renaming
* Finish writing this README
* Add collaborators to repository
