function error = calculate_error(U, X, Y, t)
    % Оценка на грешката като сума на квадратите на разликите
    % между точното решение и численото решение
    U_exact = exact_solution(X, Y, t);
    error = sum((U_exact - U).^2, 'all');
end