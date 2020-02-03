function [mnew] = getmnew(m,dm)

%% INITIALIZATION
% m = initial mass of the rocket
% dm = rate of change of mass
% t = time

%% CALCULATIONS
mnew = m - dm; % calculates the mass of the rocket after a certain time 
               % after launch depending on the rate of mass being expelled

end