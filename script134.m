syms x y(x);
eqn = diff(y, x, 2) - y == x^2 - x + 1;
y0 = -3;
y1 = 1;
sol = dsolve(eqn, [y(0) == y0, subs(diff(y), x, 0) == y1]);
disp(sol);
