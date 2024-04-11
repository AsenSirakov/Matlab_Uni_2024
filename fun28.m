function yp = fun28(x, z)
    yp = zeros(2, 1);
    u = z(1);
    v = z(2);

    yp(1) = v;


    yp(2) = -p(x) * v - q(x) * u;
end