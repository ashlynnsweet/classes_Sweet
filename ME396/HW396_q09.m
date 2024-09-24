% solution is improper and solves with about a zero residual. 
% trim() command to remove some of the powers of polynomials. 
% there's an infinite number of solutions and a family of code
% the best soln is returned from RR_Diophantine code as the smallest x,y

% This script answers Question 9 in ME396 HW Block A.
% C1C Ashlynn Sweet, 20 September 2024

clear all
close all
clc

a = RR_poly([-1 1 -2 2], 1); 
b = RR_poly([-3 3], 1);
f = RR_poly([1 1 2 2], 1);

% help RR_diophantine
[x,y,r,t] = RR_diophantine(a,b,f)

test = a*x + b*y
