T = [0 9];
x0 = [0;0;0;0];
[t, x] = ode113(@syst4, T, x0);
figure;
plot(t, x);
grid on;
legend('X1', 'X2', 'X3', 'X4');
