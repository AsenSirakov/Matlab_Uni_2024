function myfuns
    clc;
    a = 1; 
    b = 2; 
    n = 100; 
    
    g1 = 1/2;
    g2 = log(2); 

    h = (b - a) / n;
    z0 = [0; g1];
    [x, z] = ode45(@fun18, [a:h:b], z0);
    y1 = z(:, 2);

    z0 = [1; 0];
    [x, z] = ode45(@fun28, [a:h:b], z0);
    y2 = z(:, 2);

    y = y1 + (g2 - y1(end)) / y2(end) * y2;

    plot(x, y, '-*');
    xlabel('x');
    ylabel('y');
    title('Solution');
end