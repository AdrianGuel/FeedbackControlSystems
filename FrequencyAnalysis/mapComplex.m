function mapComplex(F, s)
    % mapComplex applies a complex function F to a complex number s and plots the result.
    %
    % Inputs:
    %   F - Function handle representing the complex function F(s)
    %   s - A complex number or an array of complex numbers
    
    % Compute the result of F(s)
    Fs = F(s);
    
    % Plot the original complex number(s) on the complex plane
    figure;
    plot(real(s), imag(s), 'ro', 'MarkerSize', 10, 'DisplayName', 'Original s');
    hold on;
    
    % Plot the result of F(s) on the complex plane
    plot(real(Fs), imag(Fs), 'bx', 'MarkerSize', 10, 'DisplayName', 'F(s)');
    
    % Plot settings
    xlabel('Real Part');
    ylabel('Imaginary Part');
    title('Mapping of Complex Numbers under Function F(s)');
    legend;
    grid on;
    axis equal;
    
    % Highlight the transformation with lines
    for k = 1:length(s)
        plot([real(s(k)), real(Fs(k))], [imag(s(k)), imag(Fs(k))], 'k--');
    end
    
    hold off;
end
