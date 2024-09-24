% This script answers Question 2 in ME396 HW Block A.
% C1C Ashlynn Sweet, 19 September 2024

clear all
close all
clc

% define z1
z1 = [0.866; 0.5];

% determining the 2x2 matrix G that rotates by 120 deg
G = [cosd(120) -sind(120); sind(120) cosd(120)]
z2 = G*z1 % 120 degree rotated vector

% plotting z1 and z2 to verify the rotation
hold on
RR_plot_real(z1,'b-');
RR_plot_real(z2,'k-');

fprintf(['\nThe rotation matrix G is [cos(120) -sin(120); sin(120) cos(120)].' ...
    '\nWhen multiplied by the z1 vector, the resultant z2 is [-0.866; 0.5]. ' ...
    '\nThis is verified by plotting z1 and z2 on the same graph to visualize' ...
    ' the rotation.\n'])