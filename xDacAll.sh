#!/bin/bash 
#PBS -m be 
#PBS -j oe 

cd /home/katebiar/Research/nsmTeif/dacRenXteifEsc
module load matlab
matlab -nodesktop<calDacAll.m
