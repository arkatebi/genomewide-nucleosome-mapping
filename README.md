## Tool for Genomewide Nucleosome mapping

This directory contains a set of matlab functions that constitute a piece of 
software that can be run on NIH biowulf server. The software calculates the 
distance autocorrelation function for a set of genes or two sets of genes:

calDacAll.m: computes distance autocorrelation function (DAC) for a set of genes by mapping MNase digested nucleosomes. 

calDacPair.m: computes distance autocorrelation function (DAC) for two sets of genes in the same manner as before.

xDacAll.sh and xDacPair.sh are two shell scripts that invoke the above two functions calDacAll.m and calDacPair.m, respectively.

tables: directory that has the files with the genes and their information 

results: output directory where the software writes the output (DAC function values).  

Definition of DAC can be found at Cui F, Cole HA, Clark DJ, Zhurkin VB (2012) Transcriptional activation of yeast genes disrupts intragenic nucleosome phasing, Nucleic Acids Research 40(21).
