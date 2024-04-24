function AsenSirakovkr44()
a = 1; % аз съм 21138110(11) номер, a=1 , b=1            
b = 1;           
c = 1;          
N = 100;         
M = 100;          
T = 2;            
dt = 0.01;        
hx = a / N;       
hy = b / M;      

% Discretize the domain
x = linspace(-a, a, N);
y = linspace(-b, b, M);

% Initialize the grid
U = zeros(N, M);
U(:, :) = 10;

% Apply boundary conditions
U(1, :) = -exp(-a - y) .* sin(a) .* cos(y);    % U(-a, y) = -e^(-a-y)*sin(a)*cos(y)
U(N, :) = exp(-a - y) .* sin(a) .* cos(y);     % U(a, y) = e^(-a-y)*sin(a)*cos(y)
U(:, 1) = exp(-x + b) .* sin(x) .* cos(b);     % U(x, -b) = e^(-x+b)*sin(x)*cos(b)
U(:, M) = exp(-x - b) .* sin(x) .* cos(b);     % U(x, b) = e^(-x-b)*sin(x)*cos(b)

% Create a figure for the animation

% Time stepping loop
t = 0;
while t < T
    % Compute the update for each grid point
    for i = 2:N-1
        for j = 2:M-1
            U(i, j) = U(i, j) + dt * (c * (U(i-1, j) - 2 * U(i, j) + U(i+1, j)) / hx^2 ...
                    + c * (U(i, j-1) - 2 * U(i, j) + U(i, j+1)) / hy^2 ...
                    - 1 - 2 * exp(-x(i) - y(j)) * (a * sin(x(i)) * sin(y(j)) - b * cos(x(i)) * cos(y(j))));
        end
    end
    
    t = t + dt;   % Update time
 
    % Plot the current solution
    surf(x, y, U');
    xlabel('x');
    ylabel('y');
    zlabel('U');
    title(sprintf('Solution of the Diffusion Equation (t = %.2f)', t));
    
    drawnow;     % Update the plot
    
end