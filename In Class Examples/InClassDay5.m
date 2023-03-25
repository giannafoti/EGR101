%% Day 5 code
% EGR 101


%% Dot operator

% y - array starting at 1, ending at 4.5, step size 0.5 
y = 1:0.5:4.5;

% z - array with 8 pts btw. 1 & 1
z = linspace(1,10,8);

% a = 2, b = 4
a = 2; b = 4; 

% x = y(a+bz)^1.8
x = (y.*(a+b*z).^1.8)./(z.*(5-y))

%% Building arrays

% x integers from 1 to 4
x = 1:4;

% y - squares of x
y = x.^2;

% topBottom x in top row and y in bottom row
topBottom = [x; y]

% sideBySide: x in first column, y in 2nd
sideBySide = [x' y']

% add new row to 4x2 array with next values
sideBySide = [sideBySide; [5 25]]

% last 2 columns of topBottom
topBottom(:,3:4)

