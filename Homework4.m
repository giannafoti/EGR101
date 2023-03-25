%%  Homework Assignment 4
%   Gianna Foti 
%   EGR 101
%   Due Date 9/20/2022

%% Definitions 
t = 0:50; %time vector in seconds 0-50 in one step increments

%% Figuring Out T 
t1 = t (t >= 0 & t <= 10); %time parameters
t2 = t (t > 10 & t <= 20); %time parameters
t3 = t (t > 20 & t <= 30); %time parameters
t4 = t (t > 30);  %time parameters

%% Computing Velocity 
V1 = -14 * t1.^2 + 570*t1; %first equation to find t1
V2 = -100 * t2 + 5300; %second equation to find t2
V3 = -76 * t3.^2 + 4020 * t3 - 46700; %third equation to find t3
V4 = 58564* exp(-.0788 * t4); %fourth equation to find t4

OneVelocity = [V1 V2 V3 V4]; %putting all velocities into one vector 

%% Making a Plot 
plot (t, OneVelocity) %plotting t as x and velocity as y
xlabel ('Time (in Seconds)') %xlabel
ylabel ('Velocity (m/s)') %ylabel
title ('Velocity Over Time Graph') %making a title for graph
legend ('Velocity in M/S Line', 'location', 'best') %doing a legend for the one line just in case

%% Finding the Max Velocity the Rocket Reache
MV = max(OneVelocity); %the max velocity in m/s
EV = 5030; %the escape velocity in m/s


%% Conditional Statement 

if MV >= EV %if statement for if the max is greater or equal to the escape then will launch
    fprintf ('Your velocity is %.2f m/s and the escape velocity is %g m/s\n', MV, EV) %stating what the max and escape are
    disp ('You will launch off Mars and reach escape velocity') %telling if it will escape or not
else %if statement for if the max is not greater than escape
    fprintf ('Your velocity is %.2f m/s and the escape velocity is %g m/s\n', MV, EV) %stating what the max and escape are
    disp ('You will not launch off Mars and do not reach escape velocity') %telling if it will escape or not
end  

















