A = sym('A', [3, 3]);
B = sym('B', [3, 3]);
A = randi([1, 10], 3, 3);
B = randi([1, 10], 3, 3);
C_sum = A + B;
C_product = A * B;
try
    A_inv = inv(A);
catch
    disp('��������� A ���� �������, ��� ���� � ����������.');
    A_inv = [];
end
disp('������� A:');
disp(A);
disp('������� B:');
disp(B);
disp('���� �� ��������� A � B:');
disp(C_sum);
disp('������������ �� ��������� A � B:');
disp(C_product);
if ~isempty(A_inv)
    disp('������� �� ��������� A:');
    disp(A_inv);
end
