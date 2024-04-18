A = sym('A', [3, 3]);
B = sym('B', [3, 3]);
A = randi([1, 10], 3, 3);
B = randi([1, 10], 3, 3);
C_sum = A + B;
C_product = A * B;
try
    A_inv = inv(A);
catch
    disp('Матрицата A няма обратна, тъй като е сингуларна.');
    A_inv = [];
end
disp('Матрица A:');
disp(A);
disp('Матрица B:');
disp(B);
disp('Сума на матриците A и B:');
disp(C_sum);
disp('Произведение на матриците A и B:');
disp(C_product);
if ~isempty(A_inv)
    disp('Обратна на матрицата A:');
    disp(A_inv);
end
