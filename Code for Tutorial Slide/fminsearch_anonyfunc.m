fun = @(x) 100 * (x(2) - x(1)^2)^2 + (1 - x(1))^2;
x0 = [0, 0];
[x, fval] = fminsearch(fun, x0);
x
fval