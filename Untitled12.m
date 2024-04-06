A = 18;
a= 1.6;
theta = 1.1;
omega0 = 1.1;
step=0.01;
t =0:step:2;
x = A * exp(1i * (omega0 * t + theta));
t1=0:step:1;
t2=1+step:step:2;
h1=a-t1;
h2=zeros(size(t2));
h=[h1 h2];
plot(t, real(x)); grid 
title('Real part of input signal x(t)');
xlabel('Time');
ylabel('Amplitude');
figure(2)
plot(t, h);grid
title('Impulse response h(t)');
xlabel('Time');
ylabel('Amplitude');
figure(3)
y = conv(x, h)*step; 
t_y = 0:step:4;
plot(t_y, real(y));grid
title('Real part of output signal y(t)');
xlabel('Time');
ylabel('Amplitude');
figure(4)
subplot(4,1,1);
x1 = deconv(y, h)/step;
plot(t,x1);grid
title('Real part of input signal DECONV x1(t)');
xlabel('Time');
ylabel('Amplitude');
subplot(4,1,2);
plot(t, real(x)); grid 
title('Real part of input signal x(t)');
xlabel('Time');
ylabel('Amplitude');
figure(5)
subplot(5,1,1);
hc = deconv(y, x)/step;
plot(t,hc);grid
title('Real part of input signal DECONV h(t)');
xlabel('Time');
ylabel('Amplitude');
subplot(5,1,2);
plot(t, real(h)); grid 
title('Real part of input signal h(t)');
xlabel('Time');
ylabel('Amplitude');
