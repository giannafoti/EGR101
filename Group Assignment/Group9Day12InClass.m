%% Group InClass Assignment  
% Gianna Foti, Brian Bekken, Juan Martinez- Alvarado, Ian Anzigare
% Dr. Xu
% 9/14/22

%% Loop
disp('The perfect numbers are')

for range = 5:5000
    if isPerfect(range)
        
        fprintf ('%g ', range)
    end
    
end 

