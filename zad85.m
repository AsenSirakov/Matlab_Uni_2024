T=[0 0.5 1 1.5 3 4 8];
x0=[0;0;0];
[t,x]=ode45(@dif32,T,x0);
plot(t,x),grid,title('dif32'),legend('X1','X2','X3')
