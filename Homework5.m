%%  Homework Assignment 5 
%   Gianna Foti 
%   EGR 101
%   Due Date 9/29/2022


%% Definitions  
r = randi (700); %making a random number from 1-700
disp (r)

%% Input 
guess = input ('Please enter a random number in the range 1-700: '); %asking for user input
disp(guess);

%% Counter
counter = 0; 

%% If Statement

%if statement if the user guesses the random number on the first try
if guess == r
    counter = counter + 1
    disp('You won!')
end

%% While Loop
while guess ~= r 
 counter = counter +1; 
    if guess > r && guess <= 700 % if the guess is greater than the number but less than or equal to  700
         disp ('That is too high. Try again.') 
         guess = input ('Please enter a random number: ');
    end 

    if guess < r && guess >= 1 %if the guess is less than the number but greater than 0
        disp ('That is too low. Try Again. ') 
        guess = input ('Please enter a random number: ');
    end

    if guess == r %if the user guesses correctly
        disp ('You won')
    end    

    if guess > 700 | guess < 1 %if guess is greater than 700 or less than 1, it'll quit
        disp ('Game Over')
        guess = r;
        fprintf ('You gave up, the correct answer was %g \n', r)
    end
end 

fprintf('It took this many attempts: %g', counter)


% again = 'Y';
% 
% while GuessGame  == 'Y'
%     [x,y] =GuessGame()
%     if x == 0
%         disp ('You lost')
%     elseif x == 1
%         disp ('You won!')
%     end
% end
% 
% again = input ('Keep playing? Y/N')






