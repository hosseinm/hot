clear all;
options_Hot;
%---- this function obtain max magnitude of Train data
options.max_magnitude_all = Make_Max_magnitude(data);% in this function is just for generative data set like UCSD dataset which training sample is all normal. // PedTrain is training sample. this function obtain maximum magnitude of training that consider for quantisation level
%----
options  = Makecellsize(options);%%% S [2x3,4x6,... ]

%Train----------------
options.nFrame = data(end,end)+1-(options.tracklet_length)+1;
disp(['Number of video frames: ', num2str(options.nFrame)]);
data = rm_noisy_trk(data);
[trk_magnitude,trk_orientation] = trk2magori(data);
[Tracklets_matrix] = tracklet2matrix(data);
%% Method
disp('Compute HOT for the video under parameters:');
disp(['number of orientation: ', num2str(options.number_of_orientation), ' / ', ...
     'tracklet length : ', num2str(options.tracklet_length_cell(trkcount)), ' / ', ...
      'Patche size : ', num2str(options.Xinput),'x' ,num2str(options.Yinput)]);
      
linear_index = seq2bin(options,trk_magnitude,trk_orientation);
[hot_descriptor,P] = hot_cell(options,Tracklets_matrix,linear_index);
%%reshape train matrix
HOT_fs = reshape(hot_descriptor',[],(size(P,1)/( options.Xinput.* options.Yinput)));%Per-frame, Per-sector - FS
HOT_bw = Cell_feature(P,hot_descriptor,options);% Fully bag of words - BW







