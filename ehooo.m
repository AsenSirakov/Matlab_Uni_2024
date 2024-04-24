a = 1;           
b = 1;           
c = 1;          
N = 100;         
M = 100;          
T = 2;            
dt = 0.01;        
hx = a / N;       
hy = b / M;      
x = linspace(-a, a, N);
y = linspace(-b, b, M);
U = zeros(N, M);
U(:, :) = 10;
U(1, :) = -exp(-a - y) .* sin(a) .* cos(y);    
U(N, :) = exp(-a - y) .* sin(a) .* cos(y);     
U(:, 1) = exp(-x + b) .* sin(x) .* cos(b);     
U(:, M) = exp(-x - b) .* sin(x) .* cos(b);     
t = 0;
while t < T
    for i = 2:N-1
        for j = 2:M-1
            U(i, j) = U(i, j) + dt * (c * (U(i-1, j) - 2 * U(i, j) + U(i+1, j)) / hx^2 ...
                    + c * (U(i, j-1) - 2 * U(i, j) + U(i, j+1)) / hy^2 ...
                    - 1 - 2 * exp(-x(i) - y(j)) * (a * sin(x(i)) * sin(y(j)) - b * cos(x(i)) * cos(y(j))));
        end
    end
    t = t + dt; 
     axes(handles.axes1);
      surf(x, y, U');
    xlabel('x');
    ylabel('y');
    zlabel('U');
    title(sprintf('Решение', t));  
end