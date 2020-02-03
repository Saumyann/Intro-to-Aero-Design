function [rho_si, p_si] = getpp(alt)

%% Function Description
% This function calculates the density and pressure of the air at the 
% altitude designated for each time iteration.

%% Initialization

hg = 0:500:100000; %geometric altitude vector in feet
h_si = hg * 0.3048 / 1000; %altitude vector in kilometers
R = 287; %the gas constant in joules per kilogram Kelvin
a1 = -6.5 * 10 ^ -3; %slope for section one in Kelvin per meter
a2 = 3 * 10 ^ -3; %slope for section two in Kelvin per meter
p_init = 101324.02081; %the initial pressure in Newtons per meter squared
g = 9.81; %the gravitational acceleration
rho_init = 515.378818 * 2.3769 * 10 ^ -3; %the initial density in kilograms per meters cubed
gamma = 1.4; %speed of sound constant that is dimensionless

%% calculations

% if statement that creates the temperature, pressure, density, and speed for the first section of altitude in SI units
if (alt >= 0 && alt <= 36000)
    t_K = 288.16 + a1 * alt * 0.3048; %creates the first section of the temperature vector in Kelvin
    p_si = p_init * exp(-(g / (R * t_K)) * (alt - hg(1)) * 0.3048); %creates the first section of the pressure vector in Newtons per meters squared
    rho_si = rho_init * exp(-(g / (R * t_K)) * (alt - hg(1)) * 0.3048); %creates the first section of the density vector in kilograms per meters cubed

%else if statement that creates the temperature, pressure, density, and speed for the second section of altitude in SI units
elseif (alt > 36000 && alt <= 82000)
    t_K = 216.66; %creates the second section of the temperature vector in Kelvin
    p_si = p_init * exp(-(g / (R * t_K)) * (alt - hg(1)) * 0.3048); %creates the second section of the pressure vector in Newtons per meters squared
    rho_si = rho_init * exp(-(g / (R * t_K)) * (alt - hg(1)) * 0.3048); %creates the second section of the density bector in kilograms per meters cubed

%else statement that creates the temperature, pressure, densit, and speed for the third section of altitude in SI units
else
    t_K = 216.66 + a2 * (alt * 0.3048 - 25000); %creates the third section of the temperature vector in Kelvin
    p_si = p_init * exp(-(g / (R * t_K)) * (alt - hg(1)) * 0.3048); %creates the third section of the pressure vector in Newtons per meters squared
    rho_si = rho_init * exp(-(g / (R * t_K)) * (alt - hg(1)) * 0.3048); %creates the third section of the density bector in kilograms per meters cubed
end

