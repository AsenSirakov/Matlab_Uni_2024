function Myfun67
    [x, y] = vhod52();
    degrees = 1:3;
    for deg = degrees
        p = polyfit(x, y, deg);
        disp(['����������� �� ������� �� ������ ' num2str(deg) ': ' num2str(p)]);
        x_fit = linspace(min(x), max(x), 1000);
        y_fit = polyval(p, x_fit);
        figure;
        plot(x, y, 'o', x_fit, y_fit, '-')
        title(['������������ � ������� �� ������ ' num2str(deg)])
        xlabel('x')
        ylabel('y')
        legend('�����', '������������')
        error = norm(y - polyval(p, x));
        disp(['������ ' num2str(deg) ' - ������: ' num2str(error)])
    end
end
