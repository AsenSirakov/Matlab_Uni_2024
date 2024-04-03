function [x,y]=vhod52
clc;
n=input('Enter number of data points n = ');
display(['Enter data']);
for i=1:n
 display(['Enter ',num2str(i),' data couple õ,y']);
 x(i)=input('õ = '); 
 y(i)=input('y = '); 
end
end
