function mapComplexW(F, wRange)
    % mapComplexW substitutes s = w*1i into a given complex function F(s),
    % where w varies within a specified range, and plots the results.
    %
    % Inputs:
    %   F      - Function handle representing the complex function F(s)
    %   wRange - A vector specifying the range of w (real values)
    
    % Substitute s = w*1i into the function F(s)
    s = wRange * 1i;
    Fs = F(s);
    
    % Plot the results on the complex plane
    figure;
    plot(real(Fs), imag(Fs), 'b-', 'LineWidth', 2, 'DisplayName', 'F(w*1i)');
    hold on;
    
    % Optionally, mark the individual points on the plot
    plot(real(Fs), imag(Fs), 'ro', 'MarkerSize', 6, 'DisplayName', 'Points on F(w*1i)');
    
    % Plot settings
    xlabel('Real Part');
    ylabel('Imaginary Part');
    title('Mapping of s = w*1i under Function F(s)');
    legend;
    grid on;
    axis equal;
    
    hold off;
end
