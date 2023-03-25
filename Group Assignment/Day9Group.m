 %% Programming Assignment Module 4 #2
 % Gianna Foti, Liam Laidlaw, Angelica Garguklinski, D'Yona Jones
 % Dr. Xu
 % 9/15/22


clear

format compact

 

%% Assigning coefficients

a = input("What is your A coefficient?: "); %Next three lines will ask for coefficients in the quadratic and assign to variables

b = input("What is your B coefficient?: ");

c = input("What is your C Coefficient?: ");

 

%% determining the discriminant and roots


disc = (b^2)-4*a*c; %calculates the discriminant given the variables for coefficient



%% Roots Function 
p = [a b c];

r = roots(p);

 

%% determining root type

if disc == 0 %determines if the discriminant is equal to 0

    fprintf('Your root is: %.2f\n',r(1)) %next two lines display the root types and value

    disp('Your roots are equal and real')

elseif disc < 0 %determines if the discriminant is less than 0

    fprintf('Your roots are %g+/-%.2fi\n',real(r(2)),real(r(2)))%next two lines display the root types and value

    disp('Your roots are complex')

else %if previous two are false then the roots must be non equal and real

    fprintf('Your roots are %.2f\n and %.2f\n',r(1),r(2))%next two lines display the root types and value

    disp('Your roots are non-equal and real')

end

 

 

 