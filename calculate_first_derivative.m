function derivative_values = calculate_first_derivative(x_values, y_values)
    n = length(x_values);
derivative_values = zeros(1, n);
for i = 1:n
if i == 1
derivative_values(i) = (-3*y_values(i) + 4*y_values(i+1) - y_values(i+2)) / (x_values(i+2) - x_values(i));
elseif i == n
derivative_values(i) = (3*y_values(i) - 4*y_values(i-1) + y_values(i-2)) / (x_values(i) - x_values(i-2));
else
derivative_values(i) = (y_values(i+1) - y_values(i-1)) / (x_values(i+1) - x_values(i-1));
end
end
end

