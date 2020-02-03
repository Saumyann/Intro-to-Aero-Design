function [dm] = getdm(dt, stageMass, stageStartHeight, tToW)

%% CALCULATIONS
mdot = getfuelparams(stageMass, stageStartHeight, tToW);

% calculates the change in mass of the fuel per iteration, kg
dm = dt * mdot; 

end

