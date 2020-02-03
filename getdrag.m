function [drag] = getdrag(rho,v)

%% INITIALIZATION
% rho = density of the air depending on elevation of the rocket
% v = velocity of the rocket depending on time
s = .2733; % cross sectional area of the rocket m^2
cd = 0.1789; % cd of a spherically blunted nose cone

%% CALCULATIONS
drag = (1/2) * rho * s * cd * v^2; % calculates the force of drag on the rocket
