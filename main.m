function main()
[x_values, y_values] = vhod7();
first_derivative_values = calculate_first_derivative(x_values, y_values);
second_derivative_values = calculate_second_derivative(x_values, y_values);
figure;
plot(x_values, y_values, '-o');
title( 'Input function');
grid;
figure;
plot(x_values, first_derivative_values, '-o');
title('First variable');
grid;
figure;
plot(x_values, second_derivative_values, '-o');
title('Second variable');
grid;
end
