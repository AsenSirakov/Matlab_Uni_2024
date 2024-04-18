function myfun
clc;
display(['Решаване на нелинейни системи уравнение']);
n=input('Задай брой уравнения n = ');
display(['Задай вектора на началните приближения ']);
for i=1:n
x0(i)=input('Задай начално приближение х0 = ');
end
[x1,fval]=fsolve(@fun,x0);
display(['Решението е']);
for i=1:n
display([' x ',num2str(i),' = ',num2str(x1(i)),' f = ',num2str(fval(i))]);
end
end
