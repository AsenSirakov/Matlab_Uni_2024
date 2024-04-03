function Myfun33()
    n = input('Number of points: ');
    [X, Y] = Input(n);
    syms x;
    L = LagrangeInterpolation(X, Y, x);
    x_values = min(X):0.1:max(X);
    y_values = subs(L, x_values); 
    plot(X, Y, 'o', x_values, y_values, '-');
    xlabel('x');
    ylabel('y');
    title('Interpolation with Lagrange Polynomial');
    error_estimate = max(abs(Y - subs(L, X)));
    fprintf('Error estimate: %f\n', double(error_estimate));
    prompt = 'Do you want to calculate the interpolation at a given point x (yes/no)? ';
    calculate_at_x = input(prompt, 's');
    if strcmp(calculate_at_x, 'yes')
        x_value = input('Enter a value for x: ');
        y_value = subs(L, x_value);
        fprintf('Value at point x = %f: y = %f\n', x_value, double(y_value));
    end
    function [X, Y] = Input(n)
        X = zeros(1, n);
        Y = zeros(1, n);
        for i = 1:n
            x = input('Enter a value for x: ');
            X(i) = x;
            y = input('Enter a value for y: ');
            Y(i) = y;
        end
    end
    function L = LagrangeInterpolation(X, Y, x)
        syms L;
        n = length(X);
        L = 0;
        for i = 1:n
            Li = 1;
            for j = 1:n
                if i ~= j
                    Li = Li * (x - X(j)) / (X(i) - X(j));
                end
            end
            L = L + Y(i) * Li;
        end
    end
end
