function  [hot_descriptor,P] = hot_cell(options,Tracklets_matrix,linear_index)

[P,D] = genarate_cellmatrix( options);
hot_descriptor = zeros(size(P,1),options.numbin.*options.number_of_orientation);
for idx=1:size(P,1)
    
    Id = Get_Intersecting_NewTracklet( Tracklets_matrix,P(idx,:),D);
    hot_descriptor(idx,:) = hist(linear_index(Id),1:options.numbin*options.number_of_orientation );
    
end
