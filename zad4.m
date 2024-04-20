syms t w
A = 7;
T = 12;
x = A * (heaviside(t + T/2) - heaviside(t - T/2));
X1 = fourier(x);
x_reconstructed = ifourier(X1, t);
t_values = linspace(-2*T, 2*T, 1000);
x_reconstructed_values = subs(x_reconstructed, t, t_values);
w_values = linspace(-100/12, 100/12, 200);
X1_values = subs(X1, w, w_values);
figure(1)
plot(w_values, abs(X1_values));
grid on;
xlabel('Frequency (w)');
ylabel('|X1(w)|');
title('Amplitude Spectrum of X1(w)');
figure(2)
plot(t_values, x_reconstructed_values, 'LineWidth', 2);
grid on;
xlabel('Time (t)');
ylabel('x_{reconstructed}(t)');
title('Reconstructed Signal x_{reconstructed}(t)');
