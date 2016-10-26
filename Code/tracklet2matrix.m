function Tracklets_matrix = tracklet2matrix(tracklet_ped)
% load(options.dataset_path);
disp('Convert 3D tracklet matrix to 2D');

for i = 1: length(tracklet_ped)
    for j = 0:size(tracklet_ped,2)-((size(tracklet_ped,2)/3)*2)-1
        Tracklets{i}(1,j+1) = tracklet_ped(i,3*j+1);
        Tracklets{i}(2,j+1) = tracklet_ped(i,3*j+2);
        Tracklets{i}(3,j+1) = tracklet_ped(i,3*j+3);
    end
end

Tracklets_matrix = zeros(size(Tracklets,2),Tracklets{end}(end,end)+1);

for i=1:size(Tracklets,2)
    ind =Tracklets{i}(3,:);
    ind=ind+1;
    Tracklets_matrix(i,ind,1) =Tracklets{i}(1,:);
    Tracklets_matrix(i,ind,2) =Tracklets{i}(2,:);
    %%%optional
end
end

    
    