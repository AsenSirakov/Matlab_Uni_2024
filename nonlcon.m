function [c, ceq] = nonlcon(x)
    c = [2*x(1)^2 + x(2)^2 - 34;   
         2*x(1) + 3*x(2) - 18];     
    ceq = [];
end
