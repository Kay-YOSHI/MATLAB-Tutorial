f = @(z, mu, sigma) (1 / (sqrt(2 * pi) * sigma)) * exp(-(z - mu)^2 / (2 * sigma^2));
f(0, 0, 1)