function f = obj_fminsearch(x)
f = 100 * (x(2) - x(1)^2)^2 + (1 - x(1))^2;