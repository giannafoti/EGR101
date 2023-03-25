%% Day 12 Code - functions
% EGR 101
format compact
clear, clc

%% Using factorial function
% 5!
fiveFac = myFactorial(5)
% factorials of the integers from 1 to 5
for value = 1:5
    myFactorial(value)
end

%% Two outputs
% Store both values
[A, P] = geometryFun(2, 4)

% store just the area
thearea = geometryFun(2,4)

% store just the perimeter
[~, peri] = geometryFun(2,4)

%%  Helper functions 
function fac =  myFactorial(n)
% myFactorial - finds the factorial of a number
% Argument:
%   n - the number to find the factorial of
% Returns:
%   fac - the factorial
fac = 1; % start with 1 because it won't change anything in result 1*x = x
for i = n:-1:1 % n is max number go down by 1
    fac = fac*i;
end
end

function [area, perimeter] = geometryFun (sideA,sideB)
% geometryFun - calculate the area and perimeter of a rectangle
% Argument:
%   sideA - the length of two opposite sides of a rectangle
%   sideB - the legth of the other two sides of a rectangle
% Returns:
%   area - the area of a rectangle
%   perimeter - the perimeter of a rectangle
area = sideA * sideB;
perimeter = 2*sideA + 2*sideB; 
end