% Compare AXIEM measurements with Analyzer

clear; clc; close all;

%% Import AXIEM Data
% Read S11 AXIEM data
opts11 = detectImportOptions('S11_measurements_AWR.txt');
opts11.DataLines = [2 Inf]; 
awr_s11_data = readmatrix('S11_measurements_AWR.txt', opts11);
f_awr_s11 = awr_s11_data(:, 1);    % Frequency in GHz
s11_awr_dB = awr_s11_data(:, 2);   % Magnitude in dB

% Read S21 AXIEM data
opts21 = detectImportOptions('S21_measurements_AWR.txt');
opts21.DataLines = [2 Inf];
awr_s21_data = readmatrix('S21_measurements_AWR.txt', opts21);
f_awr_s21 = awr_s21_data(:, 1);    % Frequency in GHz
s21_awr_dB = awr_s21_data(:, 2);   % Magnitude in dB

%% Import Analyzer Measurement Data
meas_obj = sparameters('S_Analyzer.s2p');

% Convert to GHz
f_meas = meas_obj.Frequencies / 1e9;

% Extract S11 (1,1) and S21 (2,1) and convert to dB
s11_meas_lin = squeeze(meas_obj.Parameters(1, 1, :));
s11_meas_dB = 20 * log10(abs(s11_meas_lin));

s21_meas_lin = squeeze(meas_obj.Parameters(2, 1, :));
s21_meas_dB = 20 * log10(abs(s21_meas_lin));

%% Plot S11 (Reflection Coefficient)
figure('Name', 'S11 Comparison', 'Position', [100, 100, 800, 500]);
plot(f_awr_s11, s11_awr_dB, 'b-', 'LineWidth', 2); 
hold on;
plot(f_meas, s11_meas_dB, 'r--', 'LineWidth', 2);
grid on;
title('S_{11}');
xlabel('Frequency (GHz)');
ylabel('Magnitude (dB)');
legend('AXIEM', 'Analyzer', 'Location', 'best');
axis tight;

%% Plot S21 (Transmission Coefficient)
figure('Name', 'S21 Comparison', 'Position', [150, 150, 800, 500]);
plot(f_awr_s21, s21_awr_dB, 'b-', 'LineWidth', 2); 
hold on;
plot(f_meas, s21_meas_dB, 'r--', 'LineWidth', 2);

% Add vertical markers for the specific Project 18 design requirements
xline(2.4, 'k:', 'Cutoff (2.4 GHz)', 'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');
xline(4.8, 'k:', 'Stopband (4.8 GHz)', 'LabelVerticalAlignment', 'bottom', 'HandleVisibility', 'off');

grid on;
title('S_{21}');
xlabel('Frequency (GHz)');
ylabel('Magnitude (dB)');
legend('AXIEM', 'Analyzer', 'Location', 'best');
axis tight;