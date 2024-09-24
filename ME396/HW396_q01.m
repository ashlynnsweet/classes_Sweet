% This script answers Questions 1a-1c in ME396 HW Block A.
% C1C Ashlynn Sweet, 14 September 2024

% ----------------- Question 1a ----------------------
clear all
close all
clc
% help RR_poly

% computing the roots of b1(s) = s^2 - 4s + 13
b1 = RR_poly([1 -4 13])

% performing Euclidean Division of a1(s) = s - s1 into b1(s)
a1 = RR_poly([1 -(2-3*i)])
[q1, r1] = b1/a1

fprintf('\nThe quotient of polynomial division of a1 into b1 is q1(s) = s - 2 - 3i.')
fprintf('\nThe remainder of this operation is r1(s) = 0.\n') 

% ----------------- Question 1b ----------------------
% computing the roots of b2(s) = s^5 + 12s^4 + 36s^3 - 58s^2 - 405s - 450 
% to three sig figs
b2 = RR_poly([1 12 36 -58 -405 -450]);
fprintf('\nThe roots of b2 are -5.00, -5.00, -3.00, -2.00, and 3.00\n')

% performing Euclidean Division of a2a(s) = s + 2 into b2(s).
a2a = RR_poly([1 2]);
[q2a, r2a] = b2/a2a
fprintf('\nThe quotient, q2a, is s^4 + 10s^3 + 16s^2 - 90s - 225.')
fprintf(['\nThe remainder, r2a, is 0. There is no remainder, therefore a2a' ...
    ' factors completely into b2.\n'])

% performing Euclidean Division of a2b(s) = s + 4 into b2(s).
a2b = RR_poly([1 4]);
[q2b, r2b] = b2/a2b
fprintf('\nThe quotient, q2b, is s^4 + 8s^3 + 4s^2 - 74s - 109.')
fprintf(['\nThe remainder, r2b, is -14. There is a remainder, therefore a2b' ...
    ' does not factor completely into b2.\n'])

% ----------------- Question 1c ----------------------
% defining values in the complex plane
z1 = 0.866 + 0.5*i;
r = cosd(120) + i*sind(120)
z2 = r*z1

% plotting those values on the same plot
hold on
RR_plot_complex(z1,'b-');
RR_plot_complex(r,'r-');
RR_plot_complex(z2,'k-');