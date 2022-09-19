%% Copyright (C) 2022 Ahmed
%% Author: Ahmed <ahmed@Ahmed-PC>
%% Created: 2022-09-19
%% Software: Octave
%% Acknowledgement: anaHr <https://youtu.be/risM3m-UTgA>

%% the subscript _d stands for dot (derivative), _dd = dot dot (second derivative), _l = linearized, _n = non-linearized

clc;
close all;
clear;

phi0 = [pi/2, 0];
[t_l, phi_d_l, phi_dd_l] = pendulum_linearized(phi0);
fig1 = figure;
plot(t_l, phi_d_l);
hold on;
plot(t_l,  phi_dd_l);
grid minor on;
legend("$Angle \phi$", "$Velocity$", "$Acceleration$");

[t_n, phi_d_n, phi_dd_n] = pendulum_non_linearized(phi0);
fig2 = figure;
plot(t_n, phi_d_n);
hold on;
plot(t_n,  phi_dd_n);
grid minor on;
legend("$\phi (rad)$", "$V (m/s)$", "$a (m/s^{2})$");

%% uncomment the lines below to get a pdf of the graphs (if you have pdflatex installed)
%% print fig1 "-dpdflatexstandalone" "-r600" pendulum_linearized
%% print fig2 "-dpdflatexstandalone" "-r600" pendulum_linearized
