function f = normaldensity(z, mu, sigma)

% This function calculates the density function of the normal distribution
% with mean "mu" and standard deviation "sigma" at a point "z"

% "sigma" must be a positive non-zero real number 
if sigma <= 0
    fprintf('Invalid input\n');
    f = NaN;
else
    f = (1 / (sqrt(2 * pi) * sigma)) * exp(-(z - mu)^2 / (2 * sigma^2));
end