%% Day 11 Code - for loops
% EGR 101
clear, clc

%% categorize
% places to hold the values
divBy2_3 = [];
divBy5 = [];

% all numbers from 1 to 30



for currNum = 1:30
    if mod (currNum, 2) == 0 && mod (currNum, 3) == 0
        divBy2_3 = [divBy2_3 currNum];
    end 

    if mod(currNum, 5) == 0
        divBy5 = [divBy5 currNum]
    end
end 

   % even & divisible by 3
disp('Even number divisible by 3')
disp (divBy2_3)
   % divisible by 5
disp('Divisble by 5')
disp (divBy5)


% Create newArray with numbers between 1 and 25 stepping by 5
% find values in newArray that are also even and divisible by 3
newArray = 1:5:25
logicArray = ismember(newArray, divBy2_3)

disp('New Numbers even and divisible by 3')
disp (newArray(logicArray))