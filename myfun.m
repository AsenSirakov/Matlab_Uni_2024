function myfun
clc;
display(['�������� �� ��������� ������� ���������']);
n=input('����� ���� ��������� n = ');
display(['����� ������� �� ��������� ����������� ']);
for i=1:n
x0(i)=input('����� ������� ����������� �0 = ');
end
[x1,fval]=fsolve(@fun,x0);
display(['��������� �']);
for i=1:n
display([' x ',num2str(i),' = ',num2str(x1(i)),' f = ',num2str(fval(i))]);
end
end
