function myfun22
clc;
display(['Calculating the triple definite integral']);
xmin=input('Set lower bound xmin =');
xmax=input('Set upper bound xmax = ');
q=integral3(@funxyy,xmin,xmax,@yminn,@ymaxx,@zmin,@zmax);
display(['The value of the integral is I = ',num2str(q)]);
end
