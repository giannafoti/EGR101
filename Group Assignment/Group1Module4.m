%% Module 4 In-Class Programming Assignment #1
% Crewe Prough - scribe
%  Gianna Foti - Guide
%  Bryce Morris- researcher
%  Susan Heil - Quality control
% EGR 101
% 9/13/2022

clc
clear
format compact 

% Flight times of 2 paper airplanes in seconds
plane1 = [1.2946    2.9785    1.0273    2.9348    1.1611    0.8617  1.0099    1.4577    1.5070    2.4790];
plane2 = [0.7653    2.7308    3.1924    1.0851    1.3995    0.7932  1.8465    2.6358    0.9538    1.0048];
%% Set up
Times_plane2 =  0.5 < plane2 & plane2 < 1.5; %flight times for plane 2 in seconds
disp ('The total number of times airplane 2 flew between 0.5 and 1.5 seconds') %making a display statement 
disp (sum(Times_plane2))% displaying values

%% average time
Average_time_1 = mean(plane1); %finding avg time in seconds
Average_time_2 = mean(plane2); %finding avg time in seconds

%% Number of times Average
Number_times_longer_Avg_1 = plane1 > Average_time_1; %finding long avg time in seconds
Number_times_longer_Avg_2 = plane2 > Average_time_2; %finding long avg time in seconds
 
%% count over average
Count_over_av_1 = plane1 (Number_times_longer_Avg_1); %finding the time over avg
Long_Sum_1 = sum(Number_times_longer_Avg_1);
fprintf ('The number of times plane 1 flew longer than its average is %g and the average flight time for plane 1 is %.2f seconds \n', Long_Sum_1, Average_time_1 )% displaying values

%% trial set up
trial_num = 1:10; %trial number for planes 1 and 2 

%% shorter average
Number_times_shorter_Avg_1 = plane1 < Average_time_1; %finding times shorter for plane 1
Number_times_shorter_Avg_2 = plane2 < Average_time_2; %finding times shorter for plane 2

%% Both under average logic
Both_under_av = Number_times_shorter_Avg_1(trial_num) & Number_times_shorter_Avg_2(trial_num); %finding when both are under avg 
trials_under_av = trial_num(Both_under_av); 
disp ('The trials in which both planes flew under average are ') % displaying values
disp(trials_under_av)  % displaying values

%% One under average Logic

One_under_av = Number_times_shorter_Avg_1(trial_num) |Number_times_shorter_Avg_2(trial_num); % using & to find values
trials_one_under_av = trial_num(One_under_av); % index trials 
disp ('the trails in which at least one plane flew under are ') % displaying text
disp( trials_one_under_av) % displaying trials under av for one or more flights

%% BONUS 

plot (trial_num, plane1, '-ko')
hold on
plot (trial_num,plane2, '-r*')
xlabel ('Trial Numbers')
ylabel ('Flight Times [in seconds]')
legend ('Plane 1', 'Plane 2', 'location', 'best')
title ('Flight Trials for Both Plane 1 and Plane 2')



