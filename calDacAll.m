% Calculates DAC profiles for two sets of genes
tblDir = [pwd '/tables/'];
dataSource = 'teif';
resultDir = [pwd '/results/'];
fName_1 = 'all9844Genes.txt';
avgX = 51;
outputFile = ['all9844-dacAvg' num2str(avgX) '.csv'];

% load gene table 1
fid = fopen([tblDir fName_1], 'r');
%tbl_1 = textscan(fid,'%s%d%d%d%f%s', '\t');
tbl_1 = textscan(fid,'%s%d%d%d%f%s','delimiter','\t');
%tbl_1 = textscan(fid,'%s%d%d%d%f%s', 5, 'delimiter', '\t');
fclose(fid);
%
dacLen = 1000;
dyadCoord = loadDyadCoordinates(dataSource);
dacS_1 = calDac(tbl_1, dyadCoord, dacLen);

% running average avgX
dacS_1 = [dacS_1 runningAvg(dacS_1(:,2),avgX)];

% DAC profiles are saved as .csv file
dlmwrite([resultDir outputFile], dacS_1, 'precision', '%i');
