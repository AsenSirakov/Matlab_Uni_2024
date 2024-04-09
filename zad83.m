T=[0 30];
X0=[2;0];
[t,X]=ode113(@van33,T,X0);
plot(t,X),grid,title('Van der Pol'),legend('X1','X2')