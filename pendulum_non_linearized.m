%% Copyright (C) 2022 Ahmed
%% Author: Ahmed <ahmed@Ahmed-PC>
%% Created: 2022-09-19
%% Software: Octave
%% Acknowledgement: anaHr <https://youtu.be/risM3m-UTgA>

function [tsol, phi_d, phi_dd] = pendulum_non_linearized(phi0)
    g = 9.8065;
    R = 2; %%  length of rod = 2m
    t = linspace(0, 100, 1000);
    dphidt = @(t, phi) [phi(2); -R/g*sin(phi(1))];
    [tsol, phi_d] = ode45(dphidt, t, phi0);
    phi_dd = -R/g*sin(phi_d(:,1));
endfunction
