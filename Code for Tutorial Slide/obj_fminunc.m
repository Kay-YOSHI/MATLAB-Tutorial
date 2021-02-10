function [f, g] = obj_fminunc(x)

% Objective function
f = 100 * (x(2) - x(1)^2)^2 + (1 - x(1))^2;

% Gradient
if nargout > 1
    g = [-400 * (x(2) - x(1)^2) * x(1) - 2 * (1 - x(1)); 
        200 * (x(2) - x(1)^2)];
end