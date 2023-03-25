%% Group InClass Assignment  
% Gianna Foti, Brian Bekken, Juan Martinez- Alvarado, Ian Anzigare
% Dr. Xu
% 9/27/22

%% Function for Perfect 

function [perfect] =  isPerfect(n)

sum = 0;

for i = 1:n-1

if mod (n,i) == 0
sum = sum + i;
end
end  

if sum == n 
    perfect = 1;
else 
    perfect = 0;
end 

% Perfect - if all of the factors add up to that number
end

 
