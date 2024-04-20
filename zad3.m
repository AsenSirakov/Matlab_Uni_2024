syms t w
A = 7;
x = A * (heaviside(t - 12/2) - heaviside(t + 12/2));
X1 = fourier(x);
w_values = linspace(-100/12, 100/12, 200);
X1_values = subs(X1, w, w_values);
x_reconstructed = ifourier(X1, t);
t_values = linspace(-6, 6, 1000);
x_reconstructed_values = subs(x_reconstructed, t, t_values);
figure;
subplot(2, 1, 1);
plot(w_values, abs(X1_values));
grid on;
xlabel('Frequency (w)');
ylabel('|X1(w)|');
title('Amplitude Spectrum of X1(w)');

subplot(2, 1, 2);
plot(t_values, x_reconstructed_values, 'LineWidth', 2);
grid on;
xlabel('Time (t)');
ylabel('x_{reconstructed}(t)');
title('Reconstructed Signal x_{reconstructed}(t) from X1(w)');
