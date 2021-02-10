function f = func1(beta)

% Variable declaration
global y X

% Compute the value of objective function (sum of squared residuals)
residual = y - X * beta;
f = residual' * residual;
    