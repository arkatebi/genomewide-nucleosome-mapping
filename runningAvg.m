function [avg] = runningAvg(values, winSize)
% This function calculates the running average of an array 'values' with window size 'winSize'
%'winSize' can be any odd integer >= 3
    %values = [9;4;1;6;2;8;5];
    %winSize = 3;
    leftE = floor(winSize/2)+1;
    rightE = numel(values)-floor(winSize/2);
    avg = zeros(numel(values),1);
    for n = leftE:rightE
        avg(n) = mean(values(n-floor(winSize/2):n+floor(winSize/2)));
    end
end
