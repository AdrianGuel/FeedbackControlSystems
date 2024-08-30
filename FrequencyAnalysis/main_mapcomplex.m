%% example 1
% Define the complex function F(s)
F = @(s) 2.*s + 1;
% Define a complex number or array of complex numbers
s = [-1+1i, -1-1i, 1-1i, 1+1i];
% Map and plot
mapComplex(F, s);

%% example 2
% Define the complex function F(s)
F = @(s) s./(s+2);
% Define a complex number or array of complex numbers
s = [-1+1i, -1-1i, 1-1i, 1+1i];
% Map and plot
mapComplex(F, s);

%% example 3
% Define the complex function F(s)
F = @(s) 5./(s+1).^2;

% Define the range for w (e.g., -10 to 10)
wRange = linspace(-10, 10, 100);

% Map and plot the results
mapComplexW(F, wRange);


%% example 4
% Define the complex function F(s)
F = @(s) 50./(((s+1).^2).*(s+10));

% Define the range for w (e.g., -10 to 10)
wRange = linspace(-10, 10, 100);

% Map and plot the results
mapComplexW(F, wRange);
