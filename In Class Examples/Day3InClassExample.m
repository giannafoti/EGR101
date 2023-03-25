%% Day 3 code
% EGR 101

format compact
%% Given distance and x1, y1, and y2, what must x2 be?

d = 5; % distance [in cm]
x1 = -1; % x position point 1[cm]
y1 = 2; % y position point 1 [cm]
y2 = 6; % y position point 2[cm]

% x position pt. 2 [cm]
x2 = sqrt(d^2-(y2-y1)^2)+x1

%% turn values into vectors
xs = [x1 x2]; % x value
ys = [y1 y2]; % y value

% find the midpoint
xMean = mean(xs)
yMean = mean(ys)

% how many points in each array?
length(xs)
length(ys)