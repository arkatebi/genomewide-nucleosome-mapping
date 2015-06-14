function [dacSum] = calDac(tbl, dyadCoord, dacLen)
% Calculates DAC for a gene set

dacSum = zeros(dacLen,2);
dacSum(:,1) = [1:dacLen];
lE = tbl{2};
rE = tbl{3};
for i = 1:size(tbl{1},1)
        chrNo = str2num(tbl{1}{i}(4:5)); %extract chromosome number
	dyadF = dyadFreq(dyadCoord{chrNo}, lE(i), rE(i));
        dac = DAC(dyadF, dyadF, dacLen);
        dac(:,1) = [1:dacLen+1];%change the stored indices in column 1:from [0:dacLen] to [1:dacLen+1]
    	dacSum(:,2) = dacSum(:,2) + dac(1:dacLen,2);
end
