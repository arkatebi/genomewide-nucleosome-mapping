## Tool for Genomewide Nucleosome Mapping
* Calculates the distance autocorrelation function for a set of genes
* Calculates the distance autocorrelation function for two sets of genes

### 

### Requirements 
* Matlab 2012b or greater
* Specifically designed to run on NIH biowulf server

### Software Usage 
calDacAll.m: computes distance autocorrelation function (DAC) for a set of genes by mapping MNase digested nucleosomes.

calDacPair.m: computes distance autocorrelation function (DAC) for two sets of genes in the same manner as before.

xDacAll.sh and xDacPair.sh are two shell scripts that invoke the above two functions calDacAll.m and calDacPair.m, respectively.

tables: directory that has the files with the genes and their information 

results: output directory where the software writes the output (DAC function values).  

Definition of DAC can be found at Cui F, Cole HA, Clark DJ, Zhurkin VB (2012) Transcriptional activation of yeast genes disrupts intragenic nucleosome phasing, Nucleic Acids Research 40(21).

### Source Code
This is an open source project and the source code is publicly available on
GitHub through the following URL: 
https://github.com/arkatebi/genomewide-nucleosome-mapping.
For questions, please email: Ataur Katebi (arkatebi@gmail.com).

### References
[1] Radivojac P, Clark WT, Oron TR, et al. (2013). A large-scale evaluation of
computational protein function prediction, Nature Methods 10(3), pp 221-227,
PMID 23353650.

[2] Norouzi D, Katebi AR, Cui F, and Zhurkin VB (2015). Topological diversity of
chromatin fibers: interplay between nucleosome repeat length, DNA linking number
and the level of transcription, AIMS Biophysics 2(4), pp 613-629m DOI:
10.3934/biopy.2015.4.613.

[3] Katebi AR, Norouzi D, Cui F, and Zhurkin V (2015). Nucleosome repeat length
relates to the gene expression level in yeast, Biophysical Journal, 108(2),
pp 539a, DOI: 10.1016/j.bpj:2014.11.2957.
