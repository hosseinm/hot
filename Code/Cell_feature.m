function B = Cell_feature(P,hot_descriptor,options)
B = [];
for i = 1:options.nFrame
A = sum( hot_descriptor(P(:,3)==i,:));
B = [B;A];
end
