## Toolset for Genomewide Nucleosome Mapping
* Calculates the distance auto-correlation function for a set of genes
* Calculates the distance cross-correlation function for two sets of genes

### Some Definitions
##### Nucleosome core particle (NCP)
This is the repeating structural unit of all eukaryotic chromatin. It consists
of a DNA fragment of 146 base pairs (bp) which is wrapped around a histone 
octamer, in 1.65 superhelical turns. The histone octamer is a homo-dimer of 
two histone tetramers, each tetramer having four histone proteins (H2A, H2B, 
H3, and H4).
     
##### Distance auto-correlation (DAC)
This function measures the relative positions of nucleosomes. For each
pair of NCP sequences, first the distance between the NCP start locations are
calculated. Then, the occurrences of all distances are summed up for both
strands.

##### Distance cross-correlation (DAC)
This is used as a measure to compare the nucleosome positions in two different
nucleosome fragment datasets. This measure is similar to DAC, however the 
distances are calculated between the start location of each nucleosome in one 
dataset and all of the start locations of nucleosomes in the other dataset.

Please, see the References for further datails of these definitions.

### Requirements 
* Matlab 2012b or greater
* This toolset is specifically designed to run on NIH biowulf server

### Software Usage 

#### Computing DAC for a set of genes

calDacAll.m: computes distance autocorrelation function (DAC) for a set 
of genes by mapping MNase digested nucleosomes.

xDacAll.sh: shell script that invokes the function calDacAll.m.

#### Computing DAC for two sets of genes

calDacPair.m: computes distance autocorrelation function (DAC) for two
sets of genes in the same manner as before.

xDacPair.sh: shell script that invokes the above the function calDacPair.m.

##### Data Source
tables: directory that has the files with the genes and their information used
by this software.

##### Outputs 
results: output directory where the software writes the output
(DAC function values).

### Results 
Please, find the details of the results and their implications in
references [1] and [2].

### Source Code
This is an open source project and the source code is publicly available on
GitHub through the following URL: 
https://github.com/arkatebi/genomewide-nucleosome-mapping.
For questions, please email: Ataur Katebi (arkatebi@gmail.com).

### References
[1] Norouzi D, Katebi AR, Cui F, and Zhurkin VB (2015). Topological diversity of
chromatin fibers: interplay between nucleosome repeat length, DNA linking number
and the level of transcription, AIMS Biophysics 2(4), pp 613-629m DOI:
10.3934/biopy.2015.4.613.

[2] Katebi AR, Norouzi D, Cui F, and Zhurkin V (2015). Nucleosome repeat length
relates to the gene expression level in yeast, Biophysical Journal, 108(2),
pp 539a, DOI: 10.1016/j.bpj:2014.11.2957.

[3] Cui F, Cole HA, Clark DJ, and Zhurkin VB (2012). Transcriptional activation of 
yeast genes disrupts intragenic nucleosome phasing, Nucleic Acids Research 40(21), 
pp 10753-10764, DOI: 10.1093/nar/gks870.
