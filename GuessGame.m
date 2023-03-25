%%  Homework Assignment 5 
%   Gianna Foti 
%   EGR 101
%   Due Date 9/29/2022


%% My Guessing Game 

function [correctA, counter] = GuessGame () 

%GuessGame- takes in guess and displays if right or wrong and how many
%attempts
%Arguments:
%   guess - the guess by the user 
%Returns: 
%   correctA - the correct answer logic 1 or 0
%   counter - the amount of attempts for the guess

r = randi (700); %making a random number from 1-700

counter = 0; 
guess = input ('Please enter a random number in the range 1-700: ');

%if statement if guessed correctly on the first try
if guess == r
    counter = counter + 1; 
    correctA = 0;
end

while guess ~= r
    % if the guess is greater than the number but less than or equal to  700
    if guess > r && guess <= 700 
         disp ('That is too high. Try again.') 
         guess = input ('Please enter a random number: ');
         counter = counter +1;
    end 
    %if the guess is less than the number but greater than 0
    if guess < r && guess >= 1 
        disp ('That is too low. Try Again. ') 
        guess = input ('Please enter a random number: ');
        counter = counter +1;
    end
    %if the user guesses correctly
    if guess == r 
        correctA = 0; 
        counter = counter +1;  
    end    
    %if guess is greater than 700 or less than 1, it'll quit
    if guess > 700 | guess < 1 
        guess = r;
        counter = counter +1;
        correctA = r; 
    end

end 
end


