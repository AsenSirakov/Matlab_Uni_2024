function myfun2
    clc;
    result = integral2(@funxy, -2, 2, @ymin, @ymax);
    disp(['The integer is : ', num2str(result)]);
end