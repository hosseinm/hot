function [P,D] = genarate_cellmatrix( options)

[Wim,Him,~]=size(imread(options.ImageName));
[xx,yy] = meshgrid(1:options.NumGridPixel_x:Him,1:options.NumGridPixel_y:Wim);
% a=floor(options.tracklet_length/2);
D=[options.NumGridPixel_x options.NumGridPixel_y options.tracklet_length];
P=zeros(size(xx(:),1).* (options.nFrame),3);
P(:,1)=repmat(xx(:),[options.nFrame,1]);
P(:,2)=repmat(yy(:),[options.nFrame,1]);
Q=repmat(1:[options.nFrame,1],size(xx(:)));
P(:,3)=Q(:);
% options.xx = xx;






