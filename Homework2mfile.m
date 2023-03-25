%%  Homework Assignment 2 
%   Gianna Foti 
%   EGR 101
%   Due Date 9/6/2022

clear, clc 
format compact
format bank 


%% Definitions 

P = 325000;
%cost of the house [in dollars]
r = .027; 
%the interest rate in decimal form 
y1 = 15; 
%the 15 year fixed mortgage rate in years 
y2 = 30; 
%the 30 year fixed mortage rate in years 

%% Mortgage Arrays

D = 20000:6000:50000;
%array for downpayment increasing 6,000 starting at 20,000 and going to 50000 [in dollars]
Pvector = P - D;
% the principal minus each of the downpayments in D vector 

%% Monthly Payment Plan for Both Plans

MonthlyPaymentfor15 = (Pvector*(r/12))/(1-(1+(r/12))^(-12*y1)); 
%monthly payment for 15 years 
MonthlyPaymentfor30 = (Pvector*(r/12))/(1-(1+(r/12))^(-12*y2)); 
%montly payment for 30 years

%% Columns 
Output = [Pvector' MonthlyPaymentfor15' MonthlyPaymentfor30'] 
%single array with the principal values in the first column, the monthly
%payment for a 15-year mortgage in the second column, and the monthly
%payment for a 30-year mortgage in the third column [in dollars]



