% This script answers Question 5 in ME396 HW Block A.
% C1C Ashlynn Sweet, 20 September 2024

clear all
close all
clc

% defining iPhone 16 Pro Max dimensions
lx = 8.25E-3; % m
ly = 77.6E-3; % m
lz = 163E-3; % m
m = 227E-3; % kg

% calculating principle moments of inertia
ICx = (1/12)*m*(ly^2+lz^2)
ICy = (1/12)*m*(lz^2+lx^2)
ICz = (1/12)*m*(lx^2+ly^2)

fprintf('\nThe principle moments of inertia have the units of kg/m^2.')
fprintf('\nThe x axis is out of the screen, and the z axis goes out of the USB connector.\n')