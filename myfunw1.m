function myfunw
    clc;
    a = 1;
    b = 2; 
    n = 100; 
    
    g1 = 1/2; 
    g2 = log(2); 

    h = (b - a) / n; 
    h2 = h / 2; 
    hkw = h^2;
    for i = 1:n
        x(i) = a + i * h;
    end
    A = zeros(n); 
    B = zeros(1, n);
    for i = 1:n
        Q(i) = 2 * hkw * q(x(i));
        PL(i) = 1 - h2 * p(x(i));
        PU(i) = 1 + h2 * p(x(i));
        R(i) = hkw * r(x(i));
    end
    A = diag(PL(2:n), -1) + diag(Q) + diag(PU(1:n-1), 1);
    B(1, 1) = -PL(1) * g1; 
    B(1, n) = -PL(n) * g2; 
    B = B + R; 
    B = B'; 
    Y=A^-1*B;
    plot(x, Y, '-*');
end