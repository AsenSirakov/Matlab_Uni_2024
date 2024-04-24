function error = calculate_error(U, X, Y, t)
    % ������ �� �������� ���� ���� �� ���������� �� ���������
    % ����� ������� ������� � ��������� �������
    U_exact = exact_solution(X, Y, t);
    error = sum((U_exact - U).^2, 'all');
end