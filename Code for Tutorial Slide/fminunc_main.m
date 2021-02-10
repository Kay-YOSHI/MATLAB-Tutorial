x0 = [0, 0];
options = optimoptions('fminunc', 'Algorithm', 'trust-region','GradObj', 'on', 'Display', 'iter');
[x, fval] = fminunc(@obj_fminunc, x0, options);
x
fval