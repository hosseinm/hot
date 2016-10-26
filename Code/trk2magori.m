function [trk_magnitude,trk_orientation] = trk2magori(data)
disp('Compute magnintude and oriantations...');
magx = abs(data(:,4:3:end-2) - data(:,1:3:end-5));
magy = abs(data(:,5:3:end-1) - data(:,2:3:end-4));
 trk_magnitude =sum(sqrt((magx).^2 + (magy ).^2),2);
trk_orientation = atan2(data(:,end-2) - data(:,1), (data(:,end-1) - data(:,2)+eps));

