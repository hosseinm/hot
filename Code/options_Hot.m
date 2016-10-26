%% addpath, set parameters, load data
cdw = cd;
addpath(cdw);

% General setting
load(fullfile('..','Data','Input','data'));
options.input=fullfile('..','Data','Input');
options.output=fullfile('..','Data','Output');
options.ImageName=fullfile('..','Data','Input','001.tif');
%Method parameter
% Default papameters:  
options.number_of_orientation=8;
options.tracklet_length_cell=[5,11,21];
options.numbin_cell=[3,5,8,16,24,36,48,60];
options.Xinput_all=[2,4,8];
options.Yinput_all=[3,6,12];
options.OverLaprang=1;
sizecell = 1;
datanum = 1;
trkcount= 2;
bincount = 1;
options.Xinput=options.Xinput_all(sizecell);%%patch size, We consider 3 level to create patches sizecell = 1 is 2*3 and sizecell = 2 is 4*6 and sizecell = 3 is 8*12 , you can change the size in option options.Xinput_all and options.Yinput_all
options.Yinput=options.Yinput_all(sizecell);
%%%%%%%%%%% tracklet length 
%% there are several length of trackless, for example in our paper we mentioned 5,11 or 21 that options.tracklet_length can be one of each trackless length
options.tracklet_length = options.tracklet_length_cell(trkcount);
options.trkcount =trkcount;
%%Option--------------
options.datasetcategory = (datanum); %%the category names of dataset  // datanum =1 is Ped1 //datanum =2 is Ped2
options.numbin = options.numbin_cell(bincount); %%%%%%size of the bin(into cell memory) in Hot we create a 2D histogram(orientation and magnitude) which for orientation all times the bin size is 8 and for magnitude side we change the size from ???options.numbin_cell=[3,5,8,16,24,36,48,60];??? and ???bincount=[1,2,???]???
