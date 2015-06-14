function [dyadCoords] = loadDyadCoordinates(name)
%This function uploads dyad coordinate data for 20 chromosomes
dataDir ='/data/katebiar/nsmDataTeif/dyadCoordEsc/nsm149-160/';
%% sixteen dyad coordinate file names for all sixteeen chromosomes 
dCoordFile{1} = [name '_' 'chrI_mouse_reads_149_160-dyadCoord-sorted.txt'];  
dCoordFile{2} = [name '_' 'chrII_mouse_reads_149_160-dyadCoord-sorted.txt']; 
dCoordFile{3} = [name '_' 'chrIII_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{4} = [name '_' 'chrIV_mouse_reads_149_160-dyadCoord-sorted.txt']; 
dCoordFile{5} = [name '_' 'chrV_mouse_reads_149_160-dyadCoord-sorted.txt'];  
dCoordFile{6} = [name '_' 'chrVI_mouse_reads_149_160-dyadCoord-sorted.txt']; 
dCoordFile{7} = [name '_' 'chrVII_mouse_reads_149_160-dyadCoord-sorted.txt']; 
dCoordFile{8} = [name '_' 'chrVIII_mouse_reads_149_160-dyadCoord-sorted.txt']; 
dCoordFile{9} = [name '_' 'chrIX_mouse_reads_149_160-dyadCoord-sorted.txt']; 
dCoordFile{10} = [name '_' 'chrX_mouse_reads_149_160-dyadCoord-sorted.txt']; 
dCoordFile{11} = [name '_' 'chrXI_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{12} = [name '_' 'chrXII_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{13} = [name '_' 'chrXIII_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{14} = [name '_' 'chrXIV_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{15} = [name '_' 'chrXV_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{16} = [name '_' 'chrXVI_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{17} = [name '_' 'chrXVII_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{18} = [name '_' 'chrXVIII_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{19} = [name '_' 'chrXIX_mouse_reads_149_160-dyadCoord-sorted.txt'];
dCoordFile{20} = [name '_' 'chrXX_mouse_reads_149_160-dyadCoord-sorted.txt'];

%% Read the dyad coordinate information for 20 chromosomes
for i= 1:20
    dyadCoords{i} = textread([dataDir dCoordFile{i}]);
end 
