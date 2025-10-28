n=[15
    45
    74
    105
    135
    166
    196
    227
    258
    288
    319
    349];  % Ordinal number of 15-th day of each month

Month_day = [31
    28
    31
    30
    31
    30
    31
    31
    30
    31
    30
    31]; % Duration (in days) of each month

% Radiation data for Trento 

H= 3.6*[1.649	
    2.514	
    3.889	
    4.903	
    5.636	
    6.471	
    6.488	
    5.575	
    4.313	
    2.812	
    1.653	
    1.277]; % Daily global irradiation [MJ/m^2] 

D = 3.6*[0.713	
    1.039	
    1.502	
    2.021	
    2.408	
    2.528	
    2.413	
    2.138	
    1.707	
    1.236	
    0.818	
    0.624]; % Daily diffuse irradiation [MJ/m^2] 

Tmin=[4   3   5   8   12   16   18   18   15   12   7   5]';  % Average monthly minimum temperature [°C] 
Tmax=[8   8   10  13  18   23   25   25   21   16   12  9]';  % Average monthly maximum temperature [°C] 

% Assume that maximum temperature during the day is reached at t=tmax 
tmax = 14; 