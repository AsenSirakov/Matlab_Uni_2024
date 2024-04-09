T=[0 7];
x0=[15;10]; 
[t,x]=ode113(@dif31,T,x0);
plot(t,x),grid,title('Example 1'),legend('X1','X2')
