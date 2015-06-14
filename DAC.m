function [ dacAr ] = DAC( dyadFreq1, dyadFreq2,maxDist)
% DAC calculates distance autocorrlation when dyadFreq1 and dyadFreq2 are
% the same array otherwise it calculates distance cross-correlation.
dacAr = zeros(maxDist+1,2);
dacAr(1:maxDist+1,1) = [0:maxDist]; % one position for distance of value zero
for j = 1:size(dyadFreq1,1)
    for m = j:size(dyadFreq2, 1)
        dist = abs(dyadFreq1(j,1) - dyadFreq2(m,1));
        if (dist == 0)
           dacAr(dist+1,2) = dacAr(dist+1,2) + (dyadFreq1(j,2) * (dyadFreq2(m,2) +1))/2;
        elseif (dist <= maxDist)
           dacAr(dist+1,2) = dacAr(dist+1,2) + dyadFreq1(j,2) * dyadFreq2(m,2); 
        else 
           break; 
        end 
    end 
end     
end

