figure(1)
n = -10:10;
x =(1.4+0.8i)*(12-5i).^n;
stem(n,real(x));
title('REAL(x[n])');
xlabel('n');
ylabel('x[n]');
grid on;
figure(2)
n = -10:10;
x=(1.4+0.8i)*(12-5i).^n;
stem(n,imag(x));
title('IMAG(x[n])');
xlabel('n');
ylabel('x[n]');
grid on
figure(3)
n = -10:10;
x =(1.4+0.8i)*(12-5i).^n;
n1=n+7;
x1=(1.4+0.8i)*(12-5i).^n1;
stem(n1,real(x1));
title('REAL(x[n-3])');
xlabel('n');
ylabel('x[n]');
grid on
figure(4)
n = -10:10;
x =(1.4+0.8i)*(12-5i).^n;
n1=n+7;
x1=(1.4+0.8i)*(12-5i).^n1;
stem(n1,imag(x1));
title('IMAG(x[n-3])');
xlabel('n');
ylabel('x[n]');
grid on
figure(5)
n = -10:10;
x = (1.4+0.8i) * (12-5i).^n;
A = 12;
x_inverted = fliplr(x);
scaled_x = A * x_inverted;
stem(n, real(scaled_x));
title(['REAL 12x[-n]']);
xlabel('n');
ylabel('12* x[-n]');
grid on;
figure(6)
n = -10:10;
x = (1.4+0.8i) * (12-5i).^n;
A = 12;
x_inverted = fliplr(x);
scaled_x = A * x_inverted;
stem(n, imag(scaled_x));
title(['IMAG 12x[-n]']);
xlabel('n');
ylabel('12* x[-n]');
grid on;



