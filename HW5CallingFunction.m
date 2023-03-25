%%  Homework Assignment 5 
%   Gianna Foti 
%   EGR 101
%   Due Date 9/29/2022

%% Option to play the game again

again = input ('Type Y if you want to play the game: ', 's'); %asking for input with a string

while again  == 'Y' %runs if the user enters 'Y'
   [correctA, counter] = GuessGame(); %calls my function and outputs
   
    if correctA ~= 0 %if it is not equal to zero (wrong)
        fprintf ('You lost! You gave up after %g attempts. The correct answer was %g \n', counter, correctA)
    elseif correctA == 0 %equal to zero is a win!
        fprintf('You won! You guessed correctly in %g attempt(s) \n',counter) 
    end

    again = input (' Keep playing? Y/N: ', 's'); %asks user if want to play again
end

