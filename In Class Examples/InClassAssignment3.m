%% In Class Assignment 3
% Sarah Reynolds (scribe), Gianna Foti (Researcher), Susan Heil (Quality
% Control), Josiah Parker (Guide)
% EGR 101
% 9/1/2022
 
 clear, clc
 format compact
 format short

%% Position vectors of pool
x1 = linspace(0,5,2); % values for 0-5 [meters]
x2 = 5:.5:20; % values for 5-20 [meters]
x3 = linspace(20,25,2); % values for 20-25 [meters]

%% Depth Vectors of pool
depth1 = -0.3 * x1; % depth for 0-5 [meters]
depth2 = 0.084 * x2.^2 - 2.2 * x2 + 7.4; % depth for 5-20 [meters]
depth3 = (3/5) * x3 - 15; % depth for 20-25 [meters]

%% Arrays
xArray = [x1 x2 x3]; % Position vector array [meters]
depthArray = [depth1 depth2 depth3]; % Depth vector array [meters]

%% Pool Depth
% Depth and location of the deepest section of the pool [meters]
[deepestDepth deepestIndex] = min(depthArray);
% Pulling out the sections immediatly before, during, and after deepest
% value [meters]
deepestSection = depthArray(:,deepestIndex-1:deepestIndex+1); % meters
deepestSection = deepestSection' % meters
% Finding the value in the x array that matches the deepest section
% [meters]
deepestXDirection = xArray(deepestIndex)