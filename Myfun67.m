function Myfun67
    [x, y] = vhod52();
    degrees = 1:3;
    for deg = degrees
        p = polyfit(x, y, deg);
        disp(['Коефициенти за полином от степен ' num2str(deg) ': ' num2str(p)]);
        x_fit = linspace(min(x), max(x), 1000);
        y_fit = polyval(p, x_fit);
        figure;
        plot(x, y, 'o', x_fit, y_fit, '-')
        title(['Апроксимация с полином от степен ' num2str(deg)])
        xlabel('x')
        ylabel('y')
        legend('Данни', 'Апроксимация')
        error = norm(y - polyval(p, x));
        disp(['Степен ' num2str(deg) ' - Грешка: ' num2str(error)])
    end
end
