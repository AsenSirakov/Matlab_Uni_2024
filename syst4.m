function ds46 = syst4(t, x)
    A = [-3, 0, 0, 0; 1, -2, 0, 0; 0, 4, -1, 0; 0, 0, 1,-1];
    B = [10, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0];
    u = [1; 1; 1; 1];
    ds46 = A * x + B * u;
end
