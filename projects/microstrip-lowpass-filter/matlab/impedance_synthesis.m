clear; clc; close all;

fc = 2.4e9;
wc = 2 * pi * fc;
Z0 = 50;

Z_high = 120; 
Z_low  = 15; 

g = [0.618, 1.618, 2.000, 1.618, 0.618];
N = length(g);

fprintf('\n>>> CONFIGURATION 1: Pi-Network (Capacitor-First) <<<\n\n');

for k = 1:N
    if mod(k, 2) ~= 0
        C = g(k) / (Z0 * wc);
        beta_l_deg = rad2deg(g(k) * (Z_low / Z0));
        
        fprintf('Section %d: Shunt Capacitor\n', k);
        fprintf('  Target Z     : %d Ohms\n', Z_low);
        fprintf('  Lumped Value : %.3f pF\n', C * 1e12);
        fprintf('  Elect. Length: %.2f degrees\n\n', beta_l_deg);
    else
        L = (g(k) * Z0) / wc;
        beta_l_deg = rad2deg(g(k) * (Z0 / Z_high));
        
        fprintf('Section %d: Series Inductor\n', k);
        fprintf('  Target Z     : %d Ohms\n', Z_high);
        fprintf('  Lumped Value : %.3f nH\n', L * 1e9);
        fprintf('  Elect. Length: %.2f degrees\n\n', beta_l_deg);
    end
end

fprintf('\n>>> CONFIGURATION 2: T-Network (Inductor-First) <<<\n\n');

for k = 1:N
    if mod(k, 2) ~= 0
        L = (g(k) * Z0) / wc;
        beta_l_deg = rad2deg(g(k) * (Z0 / Z_high));
        
        fprintf('Section %d: Series Inductor\n', k);
        fprintf('  Target Z     : %d Ohms\n', Z_high);
        fprintf('  Lumped Value : %.3f nH\n', L * 1e9);
        fprintf('  Elect. Length: %.2f degrees\n\n', beta_l_deg);
    else
        C = g(k) / (Z0 * wc);
        beta_l_deg = rad2deg(g(k) * (Z_low / Z0));
        
        fprintf('Section %d: Shunt Capacitor\n', k);
        fprintf('  Target Z     : %d Ohms\n', Z_low);
        fprintf('  Lumped Value : %.3f pF\n', C * 1e12);
        fprintf('  Elect. Length: %.2f degrees\n\n', beta_l_deg);
    end
end