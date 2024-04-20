syms t w
A = 7;
x = A * (heaviside(t - 12/2) - heaviside(t + 12/2));
X1 = fourier(x);
w_values = linspace(-100/12, 100/12, 200);
X1_values = subs(X1, w, w_values);
figure;
plot(w_values, abs(X1_values));
grid on;
xlabel('Frequency (w)');
ylabel('|X1(w)|');
title('Amplitude Spectrum of X1(w)');
