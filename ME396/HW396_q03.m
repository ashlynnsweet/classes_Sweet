% This script answers Question 3 in ME396 HW Block A.
% C1C Ashlynn Sweet, 20 September 2024

clear all
close all
clc

% defining given variables
A = [2 2 2 -3; 6 1 1 -4; 1 6 1 -4; 1 1 6 -4];
b1 = [0; -5; 0; 5];
b2 = [1; 2; 3; 4];

% computing A^2, A^3, A^4 and the rank of A
A2 = A^2
A3 = A^3
A4 = A^4
rank_of_A = rank(A)
rank_of_A_b1 = rank([A, b1])
rank_of_A_b2 = rank([A, b2])

fprintf(['A is a 4x4 matrix, therefore m = n. \nHowever, the rank of A is 3,' ...
    ' so only three of the four rows are independent. \nThis means that ' ...
    'Ax = b does not have a unique solution.\n'])

% computing vectors based on A and Aplus
Aplus = pinv(A); % finds the psuedoinverse of A
x1 = Aplus*b1
e1 = A*x1-b1
x2 = Aplus*b2
e2 = A*x2-b2