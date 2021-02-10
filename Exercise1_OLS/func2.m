function f = func2(beta)

% Variable declaration
global n y X

% Compute the value of objective function (sum of squared residuals)
f = 0;
for i = 1:n
    sq_resid = (y(i) - X(i,:) * beta) * (y(i) - X(i,:) * beta);
    f = f + sq_resid;
end