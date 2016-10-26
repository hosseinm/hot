function data = rm_noisy_trk(data_noisy)
disp('Remove noisy tracklets...');

rangx = abs( data_noisy(:,end-2) - data_noisy(:,1));
rangy = abs( data_noisy(:,end-1) - data_noisy(:,2));
rang_xy = sqrt(rangx.^2+ rangy.^2);

[noise_r_1,~] = find(isnan(data_noisy) | data_noisy< 0  );
% [noise_r_2,~] = find(rang_xy < options.noise(options.trkcount));
[noise_r_2,~] = find(rang_xy < 2);
noise_r = union(noise_r_1,noise_r_2);

%non_noise_r = X(~isequal(noise_r),:);

noise_r_bin = zeros(1,size(data_noisy,1));
noise_r_bin(noise_r) = 1;

data = data_noisy(~noise_r_bin,:);
%trj2trkl_new(X,Y,T);