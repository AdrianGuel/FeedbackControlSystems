% Example usage: Design method 1
K=1;
numerator_coeff = [K]; % Coefficient of the numerator
denominator_coeff = [1 1 0]; % Coefficients of the denominator
% Call the function with the given coefficients
plot_bode(numerator_coeff, denominator_coeff,['k','b']);

K=10;
numerator_coeff = [K]; % Coefficient of the numerator
denominator_coeff = [1 1 0]; % Coefficients of the denominator
% Call the function with the given coefficients
plot_bode(numerator_coeff, denominator_coeff,['b','r']);

K=10;
T=0.25;
alpha=0.667;
numerator_coeff = [K*T K]; % Coefficient of the numerator
denominator_coeff = [alpha*T alpha*T+1 1 0]; % Coefficients of the denominator
% Call the function with the given coefficients
plot_bode(numerator_coeff, denominator_coeff,['g','g']);
