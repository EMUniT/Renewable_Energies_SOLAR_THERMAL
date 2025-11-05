function [FR_consumption,TR_consumption,T_mains,Ta_sym,I_sym] = consumption_profiles(min,semester,I_feb,I_aug,Ta_feb,Ta_aug)

    FR_consumption = 0*min;                   % Flow rate consumption [l/min]
    TR_consumption = 0*min;                   % Temperature requested consumption [°C]

    if semester == 1                          % Summer

        T_mains = 16;
    
        FR_consumption(7*60:7*60+10) = 15;     % Morning shower: 10 [min] - 15 [l/min]
        TR_consumption(7*60:7*60+10) = 32;     % Morning shower: 10 [min] - 32 [°C]
    
        FR_consumption(7.5*60:7.5*60+4) = 6;   % Morning tooth brushing: 4 [min] - 6 [l/min]
        TR_consumption(7.5*60:7.5*60+4) = 27;  % Morning tooth brushing: 4 [min] - 27 [°C]
    
        FR_consumption(13*60:13*60+6) = 6;     % Lunch dishes washing: 6 [min] - 6 [l/min]
        TR_consumption(13*60:13*60+6) = 40;    % Lunch dishes washing: 6 [min] - 40 [°C]
    
        FR_consumption(15*60:15*60+3) = 4;     % After nap face washing: 3 [min] - 4 [l/min]
        TR_consumption(15*60:15*60+3) = 30;    % After nap face washing: 3 [min] - 30 [°C]
    
        FR_consumption(20.5*60:20.5*60+6) = 6; % Dinner dishes washing: 6 [min] - 6 [l/min]
        TR_consumption(20.5*60:20.5*60+6) = 40;% Dinner dishes washing: 6 [min] - 40 [°C]
    
        FR_consumption(22*60:22*60+15) = 15;   % Evening shower: 15 [min] - 15 [l/min]
        TR_consumption(22*60:22*60+15) = 34;   % Evening shower: 15 [min] - 34 [°C]
    
        I_sym = I_aug;
        Ta_sym = Ta_aug;
    
    
    elseif semester == 2                       % Winter
    
        T_mains = 12;
    
        FR_consumption(6.5*60:6.5*60+12) = 15; % Morning shower: 12 [min] - 15 [l/min]
        TR_consumption(6.5*60:6.5*60+12) = 40; % Morning shower: 12 [min] - 40 [°C]
    
        FR_consumption(7*60:7*60+4) = 6;       % Morning tooth brushing: 4 [min] - 6 [l/min]
        TR_consumption(7*60:7*60+4) = 32;      % Morning tooth brushing: 4 [min] - 32 [°C]
    
        FR_consumption(12.7*60:12.7*60+6) = 6; % Lunch dishes washing: 6 [min] - 6 [l/min]
        TR_consumption(12.7*60:12.7*60+6) = 42;% Lunch dishes washing: 6 [min] - 42 [°C]
    
        FR_consumption(15*60:15*60+3) = 4;     % After nap face washing: 3 [min] - 4 [l/min]
        TR_consumption(15*60:15*60+3) = 38;    % After nap face washing: 3 [min] - 38 [°C]
    
        FR_consumption(19.5*60:19.5*60+6) = 6; % Dinner dishes washing: 6 [min] - 6 [l/min]
        TR_consumption(19.5*60:19.5*60+6) = 40;% Dinner dishes washing: 6 [min] - 40 [°C]
    
        FR_consumption(21*60:21*60+15) = 15;   % Evening shower: 15 [min] - 15 [l/min]
        TR_consumption(21*60:21*60+15) = 42;   % Evening shower: 15 [min] - 42 [°C]
    
        I_sym = I_feb;
        Ta_sym = Ta_feb;
    
    else 
        
        error('Error: WRONG value of "semester". Check the value in the script.'); % Error for semester != 1||2
    
    end

end

