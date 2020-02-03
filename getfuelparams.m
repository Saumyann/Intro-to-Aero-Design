function [mdot, ve, ae, pe] = getfuelparams(stageMass, stageStartHeight, tToW)
%% CONSTANTS
% Taken from NASA CEA program
SonicVelocityExit = 906.0; % from CEA
MachNumExit = 2.779; % from CEA
pe = 214640; % Pascals, from CEA
chamberPressure = 6.722e6; % pascals, from CEA
cstar = 1695.5; % m/s, from CEA
cf = 1.4851; % unitless, from CEA
aeToAt = 5; % exit area to throat area, from CEA

%% CALCULATIONS
ve = SonicVelocityExit * MachNumExit;

stageInitialWeight = getweight(stageMass, stageStartHeight);
neededThrust = stageInitialWeight * tToW;

throatArea = neededThrust / cf / chamberPressure;
ae = throatArea * aeToAt;

mdot = chamberPressure * throatArea / cstar;

end
