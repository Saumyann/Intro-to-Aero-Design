function thrust = getthrust(pAmbient, stageMass, stageStartHeight, tToW)

% Retrieve fuel parameters
[mdot, ve, ae, pe] = getfuelparams(stageMass, stageStartHeight, tToW);

%% CALCULATIONS
thrust = mdot * ve + ae * (pe - pAmbient); %calculate thrust

end