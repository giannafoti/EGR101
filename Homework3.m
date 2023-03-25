%%  Homework Assignment 3
%   Gianna Foti 
%   EGR 101
%   Due Date 9/13/2022

clc 
clear 
format compact 

%% Definitions and Input 

a = input ('Enter a value for the radius of the x component: '); %prompting for a number [in inches]
b = input ('Enter a length for the radius of y component: '); %prompting for a number [in inches]
t = linspace (0,2*pi); %creating a boundary for t [in radians]

%% Finding the X and Y Values 

x = a*cos(t); %math equation to find x value
y = b*sin(t); %math equation to find y value 

%% Making Plots 

subplot(1,2,1) %second position plot 
plot (x,y) %making a plot 
xlabel ('X Terms for Ellipse [in inches]') %xlabel
ylabel ('Y Terms for Ellipse [in inches]') %ylabel 
title ('Ellipse Graph ') %title of first graph

subplot (1,2,2) %second position plot
plot (t,x, ':', t,y, 'o') %making the plot in terms of t 
xlabel ('X Component in Terms of T ') %xlabel
ylabel ('Y Component in Terms of T') %ylabel
legend('X Line','Y Line', 'location','best') %a legend to tell the two lines apart
title ('Component Plot') %title of the second graph 

%% Finding the Area of Ellipse 

A = pi*a*b; %finding the area of the ellipse based on the equation [in inches squared]

fprintf ('The area of the ellipse is %08.4f in inches^2 \n', A) %making a statement 



