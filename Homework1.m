%%  Homework Assignment 1 
%   Gianna Foti 
%   EGR 101
%   Due Date 8/30/2022

clear, clc 
format compact
format bank 

%% Fixed Rate Mortgage for 20 and 30 Years Definitions

P = 235000; 
%the principle amount in dollars
r = .032; 
%the interest rate in decimal form 
y1 = 20; 
%the 20 year fixed mortgage rate in years 
y2 = 30; 
%the 30 year fixed mortage rate in years 

%% Monthly Payment Plan for Both Plans

MonthlyPaymentfor20 = (P*(r/12))/(1-(1+(r/12))^(-12*y1)) 
%monthly payment for 20 years 
MonthlyPaymentfor30 = (P*(r/12))/(1-(1+(r/12))^(-12*y2)) 
%montly payment for 30 years

%% The Total Payment for Both Plans 

TotalPaymentfor20 = (MonthlyPaymentfor20 * 12) * y1 
%taking the monthly statement for 20 years and multiplying it by 12 for the months of the year then by 20 due to the length it takes to pay it off
TotalPaymentfor30 = (MonthlyPaymentfor30 * 12) * y2 
%taking the monthly statement for 30 years and multiplying it by 12 for the months of the year then by 30 due to the length it takes to pay it off

%% Cost of the Loan for Both Plans

CostofLoan20 = TotalPaymentfor20 - P 
%taking the totalpayment for 20 years and subtracting the actual cost of the house minus the downpayment
CostofLoan30 = TotalPaymentfor30 - P 
%taking the totalpayment for 30 years and subtracting the actual cost of the house minus the downpayment


 



