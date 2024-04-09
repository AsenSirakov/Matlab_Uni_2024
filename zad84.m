T=[0:1:6,7:2:18];
x0=[0;0;0];
[t,x]=ode23(@dif32,T,x0);
plot(t,x),grid,title('dif32'),legend('X1','X2','X3')