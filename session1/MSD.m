% Mass-Spring-Damper Simulation and Animation

% Parameters
m = 1;      % mass (kg)
k = 50;     % spring constant (N/m)
c = 1;      % damping coefficient (Ns/m)

% Initial conditions
x0 = 1;     % initial displacement (m)
v0 = 0;     % initial velocity (m/s)

% Simulation parameters
tspan = [0 10];      % time range for simulation (s)
dt = 0.01;           % time step for animation (s)

% Define the system of differential equations
% x1 = x (displacement), x2 = v (velocity)
dxdt = @(t, x) [x(2); -(c/m)*x(2) - (k/m)*x(1)];

% Solve the differential equation
[t, x] = ode45(dxdt, tspan, [x0 v0]);

% Animation
figure;
axis([-1.5 1.5 -0.5 0.5]);
hold on;

% Create a plot for the mass
mass = plot(x0, 0, 'bo', 'MarkerSize', 20, 'MarkerFaceColor', 'b');

% Create a plot for the spring
spring = plot([0 x0], [0 0], 'k', 'LineWidth', 2);

% Animation loop
for i = 1:length(t)
    % Update mass position
    set(mass, 'XData', x(i, 1));
    
    % Update spring position
    set(spring, 'XData', [0 x(i, 1)]);
    
    % Pause for the next frame
    pause(dt);
end
