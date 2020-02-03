function [fnet] = getfnet(thrust,weight,drag)
% thrust of the rocket engine depending on time
% weight of the rocket depending on time
% drag on the rocket dependign on altitude

%% CALCULATIONS
fnet = thrust - weight - drag; % sums all the forces acting on the rocket including thrust weight and drag

end