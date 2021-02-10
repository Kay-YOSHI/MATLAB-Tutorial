function f = obj(theta)

% Variable declaration
global N d1 d2 x1 x2 choicedum

X1 = [zeros(N, 1), d1 * x1(1), d2 * x2(1)]; % product0 (outside goods)
X2 = [ones(N, 1), d1 * x1(2), d2 * x2(2)];  % product1
X3 = [ones(N, 1), d1 * x1(3), d2 * x2(3)];  % product2
X4 = [ones(N, 1), d1 * x1(4), d2 * x2(4)];  % product3

% Exponential mean utility for each consumer, for each product
expdelta = [exp(X1 * theta), exp(X2 * theta), exp(X3 * theta), exp(X4 * theta)];

% Objective function (log-likelihood function)
f = - sum( sum( log( (expdelta ./ repmat(sum(expdelta, 2), 1, 4)) .^ choicedum ), 2 ) );
