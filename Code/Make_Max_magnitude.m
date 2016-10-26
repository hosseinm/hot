function max_value = Make_Max_magnitude(data)
disp('Compute maximum magnitude');
PedTrain{1} =data;
for seq = 1:size(PedTrain,2)
    data_noisy = PedTrain{seq};
    data = rm_noisy_trk(data_noisy);
    [trk_magnitude,~] = trk2magori(data);
    trk_magnitude1(seq)= max(trk_magnitude);
end
max_value = max(trk_magnitude1);