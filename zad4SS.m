syms t
t0=0; 
T=2.5; 
x=1*exp(2.5*t+0.15); 
ezplot (x,[t0 t0+T]); grid 
w0=2*pi/T; 
N=15; 
for k= -N:N
a(k+N+1)=(1/T)*int(x*exp(-1j*k*w0*t),t,t0,t0+T); 
ex(k+N+1)=exp(1j*k*w0*t); 
end 
xx=sum(a.*ex);
figure(2)
ezplot(xx, [t0 t0+T]); grid
title('Approximation with 31 terms')
t_extended = [t0, t0 + 3*T];
figure(3)
ezplot(xx, t_extended);
grid
title('Approximation with 31 terms (3 periods)');
a_modulus = abs(a);
a_phase = angle(a);
figure(4)
stem(-N:N, a_modulus);
title('Module for (k)');
xlabel('k');
ylabel('|a(k)|');
grid
figure(5)
stem(-N:N, a_phase);
title('Phase of (k)');
xlabel('k');
ylabel('arg(a(k))');
grid
