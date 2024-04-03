function Myfun56
[X,Y]=vhod52;
xp=input('In which point do you want to find the function value xp =');
yp=interp1(X,Y,xp);
display(['Linear interpolation =',num2str(yp)]);
yp=interp1(X,Y,xp,'pchip');
display(['Cubic interpolation =',num2str(yp)]);
yp=interp1(X,Y,xp,'spline');
display(['Spline interpolation =',num2str(yp)]);
xmin=X(1); xmax=X(length(X)); xstep=(xmax-xmin)/200;
XX=xmin:xstep:xmax;
YLin=interp1(X,Y,XX);
YCub=interp1(X,Y,XX,'pchip');
YSpl=interp1(X,Y,XX,'spline');
plot(X,Y,'o',XX,YLin,XX,YCub,XX,YSpl);
end
