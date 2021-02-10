x0 = [0, 0];
options = optimset('Display', 'iter');
[x, fval] = fminsearch(@obj_fminsearch, x0, options);
x
fval