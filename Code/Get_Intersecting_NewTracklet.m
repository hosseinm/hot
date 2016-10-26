function [ Id ] = Get_Intersecting_NewTracklet( Tracklets_matrix,P,D)
% %P = [px , py , pt]
% %D = [lx , ly , lt]
A = find(sum(Tracklets_matrix(:,P(3):P(3)+D(3)-1,1)>0,2)==D(3));
B =( Tracklets_matrix(:,P(3):P(3)+D(3)-1,1)>=P(1)& Tracklets_matrix(:,P(3):P(3)+D(3)-1,2)>=P(2)& Tracklets_matrix(:,P(3):P(3)+D(3)-1,1)<=P(1)+D(1) & Tracklets_matrix(:,P(3):P(3)+D(3)-1,2)<=P(2)+D(2));
Id = intersect(find(sum(B,2)>0),A);
end