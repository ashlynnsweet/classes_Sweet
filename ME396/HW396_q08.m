% This script answers Question 8b in ME396 HW Block A.
% C1C Ashlynn Sweet, 22 September 2024

clear; clc; syms L1 L2 L3 L4 L5 L6 L7 x1 x2 x3 u
% defing the ODEs as a set of coeffs times the variables. 
% the output, y, will be x3. The input, u, will be u1
eqn1= L1*x3+L2*x2==0;
eqn2= L3*x2+L4*x3+L5*x1==0;
eqn3= L6*x1+L7*x2==u;
sol=solve([eqn1,eqn2,eqn3],[x1,x2,x3]); G=sol.x3/u
pause;
 
syms m1 m2 m3 mu1 mu2 mu3 g k1 k2 k3 s
G=subs(sol.x3/u,{L1,L2,L3,L4,L5,L6,L7},{m3*s^2+mu3*m3*g*s+k3, -k3, m2*s^2+mu2*m2*g*s+k3+k2, -k3, -k2, m1*s^2+mu1*m1*g*s+k2+k1, -k2})
[numG,denG] = numden(G);      % this extracts out the num and den of G
numG=coeffs(numG,s);          % this extracts the powers of s in the num and den
denG=coeffs(denG,s);
numG=simplify(numG/denG(end)); % this makes the den monic
denG=simplify(denG/denG(end));

numG=numG(end:-1:1)   % this reverses the order of the vector of coefficients.
denG=denG(end:-1:1)