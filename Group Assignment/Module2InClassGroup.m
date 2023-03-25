%% 2016 Olympics Womens All around final results
%Gianna Foti 
% Dr. Xu
% EGR 101
% https://bleacherreport.com/articles/2657227-olympic-womens-gymnastics-2016-individual-all-around-medal-winners-and-scores
% Accessed 6/5/2021
clear, clc
format compact
scores = [57.565; 60.098; 58.032; 58.665; 62.198; 58.298; ...
    57.632; 57.966; 57.965; 58.549]; % points given by judges
names = ["Giulia Steingruber", "Aly Raisman", "Wang Yan", ...
    "Aliya Mustafina", "Simone Biles",  "Elsabeth Black", ...
    "Eythora Thorsdottir", "Jessica Brizeida Lopez Arocha", ...
    "Asuka Teramoto", "Shang Chunsong"];

LowScore = min(scores) %the lowest score
HighScore = max(scores) %the highest score
AverageScore = mean(scores) %the average of all the scores
TotalScore = sum(scores) %the total score of all gymnasts

TotalNumberOfGymnasts = length (names) %how many gymnasts are