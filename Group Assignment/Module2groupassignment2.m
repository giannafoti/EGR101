

%% Module 2 In Class Programming Assignment 2
% Will Beldner, Gianna Foti, Tony Auen, Michael Agnew
% EGR 101
% 8/30/2022

clear, clc
format compact

%% m and b Values
m1 = .25; %first m value
b1 = 3; %first b value
m2 = -2; %second m value
b2 = 10; %second b value

%% x Values
x1 = [3:2:21]; %vector from 3 to 21 in increments of 2
x2 = linspace(2,19,25); %vector from 2 to 19 in increments of 25

%% Equation For The Lines
y1 = x1*m1+b1; %Equation for first line
y2 = x2*m2+b2; %Equation for second line

%% Average Value of y1
average_y1 = mean(y1) %Average value of y1

%% Corresponding x2 Value of Largest y2 Value
[large, index] = max(y2); % Shows largest y2 value and location
corrospondingx2 = x2(index) % Corrosponding x2 value
