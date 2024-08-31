% Define the function to plot the Bode diagram
function plot_bode(numerator_coeff, denominator_coeff,color)
    % Define the frequency range for the Bode plot (logarithmic scale)
    omega = logspace(-2, 2, 1000); % Frequency from 0.1 to 100 rad/s

    % Initialize vectors for magnitude and phase
    magnitude = zeros(size(omega));
    phase = zeros(size(omega));

    % Loop over each frequency to calculate the magnitude and phase
    for i = 1:length(omega)
        % Calculate the transfer function H(jw) at each frequency
        jw = 1i * omega(i);
        H_jw = polyval(numerator_coeff, jw) / polyval(denominator_coeff, jw);

        % Calculate magnitude and phase
        magnitude(i) = abs(H_jw);
        phase(i) = angle(H_jw);
    end

    % Convert magnitude to decibels (dB) and phase to degrees
    magnitude_dB = 20 * log10(magnitude);
    phase_deg = rad2deg(phase);

    % Plot the magnitude response (Bode magnitude plot)
    %figure;
    subplot(2, 1, 1);
    semilogx(omega, magnitude_dB, color(1), 'LineWidth', 2);
    xlabel('Frequency (rad/s)');
    ylabel('Magnitude (dB)');
    title('Bode Diagram - Magnitude Response');
    grid on;
    hold on;

    % Plot the phase response (Bode phase plot)
    subplot(2, 1, 2);
    semilogx(omega, phase_deg, color(2), 'LineWidth', 2);
    xlabel('Frequency (rad/s)');
    ylabel('Phase (degrees)');
    title('Bode Diagram - Phase Response');
    grid on;
    hold on;
end
