% Gianna Foti 
% day 9 code
% EGR 101

clc
clear

%% Conditional statement with dice 2 players
player1 = 6;
player2 = 2;

if player1 > player2
    disp ('Player 1 wins')
elseif player2 > player1
    disp ('Player 2 wins')
else 
    disp ('it''s a tie')
end    


%% Conditional statement with dice 3 players
player1 = 1;
player2 = 3;
player3 = 3;

%P1 wins
if player1 > player2 && player1 > player3
    disp ('Player 1 wins!')

%P2 wins
elseif player2 > player1 && player2 > player3
    disp ('Player 2 wins!')

%P3 wins
elseif player3 > player1 && player3 > player2
    disp ('Player 3 wins!')

%handle ties 
else 
    % all same #
    if player1 == player2 && player2 == player3 
        disp ('Three way tie')

    %P1 = P2
    elseif player1 == player2 
        disp ('Player 1 and 2 win!')

    %P1 = P3
    elseif player1 == player3
        disp ('Player 1 and 3 win!')

    %P2 = P3
    else 
        disp ('Player 2 and 3 win!')
    end

end


%% f(x) = x^2+1
c = [1 0 1];
theRoots = roots(c)
fprintf('The roots are %g+/-%.2fi\n', real(theRoots(1)), imag(theRoots(1)))



