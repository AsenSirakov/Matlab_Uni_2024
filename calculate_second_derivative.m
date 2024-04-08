function second_derivative_values = calculate_second_derivative(x_values, y_values)
    n = length(x_values);
second_derivative_values = zeros(1, n);
first_derivative_values = calculate_first_derivative(x_values, y_values);
for i = 1:n
if i == 1
second_derivative_values(i) = (-3*first_derivative_values(i) + 4*first_derivative_values(i+1) - first_derivative_values(i+2)) / (x_values(i+2) - x_values(i));
elseif i == n
second_derivative_values(i) = (3*first_derivative_values(i) - 4*first_derivative_values(i-1) + first_derivative_values(i-2)) / (x_values(i) - x_values(i-2));
else
second_derivative_values(i) = (first_derivative_values(i+1) - 2*first_derivative_values(i) + first_derivative_values(i-1)) / (x_values(i) - x_values(i-1))*(x_values(i+1) - x_values(i));
end
end
end
