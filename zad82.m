T=[0,20];
x0=[1;1;1];
[t,x]=ode113(@dif32,T,x0);
plot(t,x),grid,title('dif32'),legend('X1','X2','X3')