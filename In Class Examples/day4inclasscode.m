%% Day 4 Code
% EGR 101
%% Board example

format compact 

% length of the board in inches
lengthOfBoard = 60;

% generating 4 inch cuts
boardVector = 0:4:lengthOfBoard

% how many 4" pieces?
numPieces = length(boardVector) -1

% generating 7 inch cuts
boardVector2 = 0:7:lengthOfBoard

% how many 7" pieces?
numPieces2 = length(boardVector2)-1

% Cut into 8 pieces
boardVector3 = linspace(0,lengthOfBoard,9)

% How long is each piece if board in 8 pieces?
sizeOfCute = boardVector3(2) - boardVector3(1)

%% Lines
% x = 5 pts btw. 0 and 10
x = linspace(1,10,5)

% y = 3x
y = 3*x

% y = 3x+2
y = 3*x+2

%% Gymnast
scores = [57.565; 60.098; 58.032; 58.665; 62.198; 58.298; ...
    57.632; 57.966; 57.965; 58.549]; % points given by judges
names = ["Giulia Steingruber", "Aly Raisman", "Wang Yan", ...
    "Aliya Mustafina", "Simone Biles",  "Elsabeth Black", ...
    "Eythora Thorsdottir", "Jessica Brizeida Lopez Arocha", ...
    "Asuka Teramoto", "Shang Chunsong"];
% 1st three gymnasts
names(1:3)

% highest scoring gymnast
[highScore, index] = max(scores)
highScoreName = names(index)
