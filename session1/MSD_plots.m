% Mass-Spring-Damper Simulation and Animation with Position and Velocity Plots

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

% Create figure for plots and animation
figure;

% Subplot for position
subplot(3, 1, 1);
plot(t, x(:, 1), 'b');
title('Position vs. Time');
xlabel('Time (s)');
ylabel('Position (m)');
grid on;

% Subplot for velocity
subplot(3, 1, 2);
plot(t, x(:, 2), 'r');
title('Velocity vs. Time');
xlabel('Time (s)');
ylabel('Velocity (m/s)');
grid on;

% Subplot for animation
subplot(3, 1, 3);
axis([-1.5 1.5 -0.5 0.5]);
hold on;
title('Mass-Spring-Damper Animation');

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
