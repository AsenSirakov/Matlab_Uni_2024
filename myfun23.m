function myfun23
clc;
display(['Calculatin triple interger']);
q=integral3(@funxyy,0,1,0,@ymaxx,0,@zmax);
display(['The integer  I = ',num2str(q)]);
end
