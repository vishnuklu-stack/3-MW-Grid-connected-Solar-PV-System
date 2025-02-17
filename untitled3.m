P = 3048000;
Vin = 11 * 29;  
fs = 10e3;  
Vout = 600; 
Ioutmax = P / Vout;  
delIL = 0.01 * Ioutmax * (Vout / Vin);  
delout = 0.01 * Vout;  
% Inductor Calculation
L = (Vin * (Vout - Vin)) / (delIL * fs * Vout);
% Capacitor Calculation
C = (Ioutmax * (1 - (Vin / Vout))) / (fs * delout);
% Load Resistance
R = Vout / Ioutmax;
% Duty Cycle
d = (Vout - Vin) / Vout;
disp(['Inductor (L): ', num2str(L), ' H']);
disp(['Capacitor (C): ', num2str(C), ' F']);
disp(['Load Resistance (R): ', num2str(R), ' Ohm']);
disp(['Duty Cycle (d): ', num2str(d)]);
