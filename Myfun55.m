function Myfun55
    [X,Y]=vhod52;
    xp=input('In which point do you want to find the function value xp =');
    yp_lin = interp1(X,Y,xp,'linear','extrap');
    yp_cub = interp1(X,Y,xp,'pchip','extrap');
    yp_spline = interp1(X,Y,xp,'spline','extrap');
    pp = csape(X, Y, 'variational');
    yp_natural_spline = ppval(pp, xp);
    disp(['Linear spline: x = ', num2str(xp), ', y = ', num2str(yp_lin)]);
    disp(['Cubic spline: x = ', num2str(xp), ', y = ', num2str(yp_cub)]);
    disp(['Spline spline: x = ', num2str(xp), ', y = ', num2str(yp_spline)]);
    disp(['Natural cubic spline: x = ', num2str(xp), ', y = ', num2str(yp_natural_spline)]);
    xmin=X(1); xmax=X(length(X)); xstep=(xmax-xmin)/200;
    XX=xmin:xstep:xmax;
    YLin=interp1(X,Y,XX,'linear','extrap');
    YCub=interp1(X,Y,XX,'pchip','extrap');
    YSpline=interp1(X,Y,XX,'spline','extrap');
    YNaturalSpline=ppval(pp, XX);
    figure;
    plot(X,Y,'o',XX,YLin,XX,YCub,XX,YSpline, XX, YNaturalSpline);
    legend('Data', 'Linear', 'Cubic', 'Spline', 'Natural Cubic');
    title('Interpolation with various spline methods');
    xlabel('x');
    ylabel('y');
end
