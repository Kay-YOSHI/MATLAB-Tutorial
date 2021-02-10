fun = @(x) 100 * (x(2) - x(1)^2)^2 + (1 - x(1))^2;
x0 = [1/4, 1/4];
A = [];
b = [];
Aeq = [];
beq = [];
lb = [0, 0.2];
ub = [0.5, 0.8];
nonlcon = @CircleConst;
[x, fval] = fmincon(fun, x0, A, b, Aeq, beq, lb, ub, nonlcon);
x
fval