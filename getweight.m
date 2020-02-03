function [w] = getweight(m, h)

%% INITIALIZATION
m_e = 5.98 * 10 ^ 24; %mass of the earth (kg)
G_e = 6.67 * 10 ^ -11; %gravitational constant on earth (N*m^2/kg^2)
r = 6.38 * 10 ^ 6; %radius of the earth (m)

%% CALCULATIONS
g = G_e * m_e / (r + h) ^ 2; %calculates gravity at the given height (m/s^2)
w = m * g; %finds weight of object with calculated gravity (N)

end