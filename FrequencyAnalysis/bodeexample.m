% Clear workspace and command window
clear; clc;

% Define the coefficients of the transfer function
numerator_coeff = 5; % Coefficient of the numerator
denominator_coeff = [1 3 2]; % Coefficients of the denominator

% Define the frequency range for the Bode plot (logarithmic scale)
omega = logspace(-1, 2, 1000); % Frequency from 0.1 to 100 rad/s

% Initialize vectors for magnitude and phase
magnitude = zeros(size(omega));
phase = zeros(size(omega));

% Loop over each frequency to calculate the magnitude and phase
for i = 1:length(omega)
    % Calculate the transfer function H(jw) at each frequency
    jw = 1i * omega(i);
    H_jw = numerator_coeff / (jw^2 + 3*jw + 2);
    
    % Calculate magnitude and phase
    magnitude(i) = abs(H_jw);
    phase(i) = angle(H_jw);
end

% Convert magnitude to decibels (dB) and phase to degrees
magnitude_dB = 20 * log10(magnitude);
phase_deg = rad2deg(phase);

% Plot the magnitude response (Bode magnitude plot)
figure;
subplot(2, 1, 1);
semilogx(omega, magnitude_dB, 'b', 'LineWidth', 2);
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('Bode Diagram - Magnitude Response');
grid on;

% Plot the phase response (Bode phase plot)
subplot(2, 1, 2);
semilogx(omega, phase_deg, 'r', 'LineWidth', 2);
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('Bode Diagram - Phase Response');
grid on;
