%%  Module 3 In-Class Programming Assignment #1
%   Gianna Foti, Will Hamlin, Jonah Carrero, Michael Gizzi
%   EGR 101
%   Due Date 9/6/2022

%% Months Array
InitialWeight = 29;
TimeSinceBirth = 1:48; %time since birth 
WeightGain = [30, 53, 61.5, 76.5, 83, 42, 76, 49, 50, 20, 52, 33]; %weight gain [in pounds]

MWG = mean(WeightGain);% mean of the weight gain [in pounds]


expectedWeight = MWG *TimeSinceBirth + InitialWeight; %expected weight gain 

%% Plot 

x1 = 1:48; %1 through 48 months 
y1 = expectedWeight; %the expected weight equation 


x2 = 48; %4 years in months 
y2 = 1600; %the weight in lbs



plot (x1, y1, x2, y2, 'rs') %plot of the graph 
title 'Weight of Fiona Over Time' %the title of the graph
xlabel 'time in months' %the x label on the graph 
ylabel 'weight in lbs' %the y label on the graph 
legend('Line of Expected Weight of Fiona Over 4 Years','Point of Fionas Weight at 4 Years','location','best') %the legend of what the points mean 

DiffBetweenExpVsActual = expectedWeight(end) - y2 %the y value differences betweeen the point and the y value of the line














