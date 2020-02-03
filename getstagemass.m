function [m_stage] = getstagemass(finert, mprop)

%% CALCULATIONS
m_stage = finert * mprop / (1 - finert) + mprop; %calculates stage mass (kg)

end