%=========================================================================%
% Discrete Choice Model
%=========================================================================%

% Variable declaration
global N d1 d2 x1 x2 choicedum

% Load Dataset
load ChoiceData.mat                                          % Choice data, Consumer characteristics
load ProductCharacteristics.mat                         % Product characteristics

N = size(ConsumerID, 1);
Choice = Choice + 1;
choicedum = dummyvar(Choice);

% Initial Value of parameters (Estimates may depend on initial values...)
init = [0; 0; 0];

% Maximize the likelihood function
options = optimoptions(@fminunc, 'Algorithm', 'Quasi-Newton', 'Display', 'iter', ... 
    'MaxFunEvals', 10000, 'TolFun', 1e-6, 'TolX', 1e-6);
[beta, Obj, exitflag, output, grad, hessian] = fminunc(@obj, init, options);

% Standard Error of MLE (Approximation) when using fminunc
se = sqrt( diag( inv( hessian ) ) );
