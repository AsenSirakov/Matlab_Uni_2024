function [x,y]=vhod52
clc;
n=input('Enter number of data points n = ');
display(['Enter data']);
for i=1:n
 display(['Enter ',num2str(i),' data couple �,y']);
 x(i)=input('� = '); 
 y(i)=input('y = '); 
end
end
