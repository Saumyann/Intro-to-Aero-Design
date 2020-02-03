
%% CONSTANTS

targetHeight = 1.05e5; % Target altitude in meters, just above the karman line
m1Low = 220;
m1High = 222;
m1Int = 0.05;

m2Low = 49;
m2High = 52;
m2Int = 0.05;


ispan = round((m1High - m1Low) / m1Int);
jspan = round((m2High - m2Low) / m2Int);

Result = zeros(ispan * jspan, 3);


for m1 = m1Low:m1Int:m1High
    i = round((m1 - m1Low) / m1Int);
    
    for m2 = m2Low:m2Int:m2High
        j = round((m2 - m2Low) / m2Int);
        
        row = i * jspan + j;
        h = Simulate(m1, m2);
        Result(row + 1, :) = [m1, m2, h];
    end
end


Result = Result(Result(:,3) >= targetHeight, :);

% Add Total Mass Column
Result(:,4) = Result(:,1) + Result(:,2);

% Sort by smallest total mass
Result = sortrows(Result, 4);
