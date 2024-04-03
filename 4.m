figure(1)
a = 1.6;  
C = 12;   
t = linspace(-4/a, 4/a, 1000);
x = C * exp(-a * t);
plot(t, x);
xlabel('Time (seconds)');
ylabel('x(t)');
title('Plot of a Real Exponential');
grid on;

figure(2)
a = 1.6;  
C = 12;   
t = linspace(-4/a, 4/a, 1000);
x = C * exp(a * t);
plot(t, x);
xlabel('Time (seconds)');
ylabel('x(t)');
title('Plot of a Real Exponential');
grid on;

figure(3)
A = 18;            
theta = 1.1;       
omega0 = 1.1;          
t = -20/1.1:0.01:20/1.1; 
x = A * exp(1i * (1.1 * t + 1.25));
real_part = real(x);
imag_part = imag(x);
subplot(2, 1, 1);
plot(t, real_part);
title('Real Part of a Complex Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(2, 1, 2);
plot(t, imag_part);
title('Imaginary Part of a Complex Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

figure(4)
A = 18;         
theta = 1.1;   
r = -0.6;       
omega0 = 1.1;     
t = -20/1.1:0.01:20/1.1  
a = r + 1i * omega0;
C = A * exp(1i * theta);
x = C * exp(a * t);
real_part = real(x);
imag_part = imag(x);
subplot(2, 1, 1);
plot(t, real_part);
title('Real Part of a Complex Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(2, 1, 2);
plot(t, imag_part);
title('Imaginary Part of a Complex Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
