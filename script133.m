syms x y;
eq1 = x^2 + y^2 == 13;
eq2 = x*sqrt(y) == 2*sqrt(3);
sol = solve([eq1, eq2], [x, y]);
disp('Решенията на системата са:');
disp(['x = ', char(sol.x)]);
disp(['y = ', char(sol.y)]);
