function [freqAr ] = dyadFreq(data, sCoord, eCoord)
    r = size(data,1);
    % copy all the dyad coordinates in the range [sCoord eCoord] to newData
    newData = [];
    for i = 1:1:r-1
        ind1 = data(i,2);
        if (ind1 >= sCoord && ind1 <= eCoord)
      % dyad coordinates are taken only if they are in the range [sCoord eCoord]
            newData = [newData; data(i,2)];
        end
        if(ind1>eCoord)
            break;
        end
    end
    % create an array freqAr to hold the dyad coordinates in the range (1st column) and their frequencies (2nd column)
   freqAr = zeros(eCoord-sCoord+1,2); % initialized with zeros
    for i = sCoord:eCoord
        freqAr(i-sCoord+1,1) = i; % dyad coordinates are put in the first column of the freqAr
    end
    % count the dyad coordinate frequencies
    for i = 1:size(newData,1)
         arPos = newData(i,1)-sCoord+1;
         freqAr(arPos,2) = freqAr(arPos,2)+1; % dyad coordinate frequencies are calculated 
    end 
end
