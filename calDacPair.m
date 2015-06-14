% Calculates DAC profiles for two sets of genes
tblDir = [pwd '/tables/'];
dataSource = 'teif';
resultDir = [pwd '/results/'];
fName_1 = 'up2500Genes.txt';
fName_2 = 'down2500Genes.txt';
avgX = 51;
outputFile = ['up2500-down2500-dacAvg' num2str(avgX) '.csv'];

% load gene table 1
fid = fopen([tblDir fName_1], 'r');
tbl_1 = textscan(fid, '%s%d%d%d%f%s', '\t');
fclose(fid);

% load gene table 2
fid = fopen([tblDir fName_2], 'r');
tbl_2 = textscan(fid, '%s%d%d%d%f%s', '\t');
fclose(fid);
%
dacLen = 1000;
dyadCoord = loadDyadCoordinates(dataSource);

dacS_1 = calDac(tbl_1, dyadCoord, dacLen);
dlmwrite([resultDir 'upDAC.csv'], dacS_1, 'precision', '%i');

dacS_2 = calDac(tbl_2, dyadCoord, dacLen);
dlmwrite([resultDir 'downDAC.csv'], dacS_2, 'precision', '%i');

% running average avgX
dacS_1 = [dacS_1 runningAvg(dacS_1(:,2),avgX)];
dacS_2 = [dacS_2 runningAvg(dacS_2(:,2),avgX)];

dacS = zeros(dacLen,5);
dacS(:,1:3) = dacS_1;
dacS(:,4:5) = dacS_2(:,2:3);

% DAC profiles are saved as .csv file
dlmwrite([resultDir outputFile], dacS, 'precision', '%i');
