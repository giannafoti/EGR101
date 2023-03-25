%% Day 7 code - input/output
% Gianna Foti 
% EGR 101
% Dr. Xu
% 9/9/2021

% input string of someones name
name = input ('Enter your name: ','s');

% prompt lower bound (number)
lower = input ('enter a lower bound: ');

% prompt upper bound
upper = input ('enter an upper bound: ');

% find average value btw. bounds, assume step size of 1
average = mean(lower:upper);

% output "NAME your average is AVERAGE"
fprintf ('%s your average is %.2f\n', ...
    name, average)

%% a word on fprintf & whole numbers
bigNumber = 19843266;
fprintf('The number is %g\n', bigNumber)
fprintf('The number is %f\n', bigNumber)
fprintf('The number is %.0f\n', bigNumber)

%% Floating point representation

% calculate area of circle with radius of 3 cm
r = 3; %radius [cm]
area = pi*r^2;

% display value with 2 decimal pts and 8 spaces 
fprintf ('Your area is %8.2f\n', area)
