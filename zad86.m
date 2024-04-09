T=[0 9];
x0=[0;0;0];
[t,x]=ode45(@syst36,T,x0);
plot(t,x),grid,title('3rd'),
legend('X1','X2','X3')
