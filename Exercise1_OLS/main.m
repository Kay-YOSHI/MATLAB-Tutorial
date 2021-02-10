%=========================================================================%
% MATLAB Exercise1: Compute OLS Estimator
%=========================================================================%

% Variable declaration
global n y X K

% Load dataset
DATA = load('DatasetForExercise1.csv');

% Substitute the first column of "DATA" into "y": Dependent variable
y = DATA(:,1);

% Substitute the second to fifth column of "DATA" into "x1"
x1 = DATA(:,2:5);

% Substitute the number of rows of "DATA" into "n"
n = size(DATA,1);

% Create a explanatory variable matrix "X" 
% with "X1" and the vector that all elements are 1(constant term)
X = [x1, ones(n,1)];

% Divide the second column of "X" by 10
X(:,2) = X(:,2)/10;

% Divide the third column of "X" by 1000
X(:,3) = X(:,3)/1000;

% Substitute the number of columns of "X" into "K"
K = size(X,2);

%=========================================================================%
% ‡@ OLS Estimates by analytical formula: Regress "y" on "X"
%=========================================================================%
beta0 = inv(X'*X)*X'*y;

%=========================================================================%
% ‡A OLS Estimates by matlab optimization solver "fminsearch"
%    using matrix operation to compute the objective function in "func1.m" file 
%=========================================================================%

% Initial value for optimization
initial = ones(5, 1);

% Minimize the sum of squared residuals using "fminsearch"
options = optimset('Display','iter');
[beta1, f1] = fminsearch(@func1, initial, options);

%=========================================================================%
% ‡B OLS Estimates by matlab optimization solver "fminsearch"
%    using "for" loop to compute the objective function in "func2.m" file
%=========================================================================%

% Minimize the sum of squared residuals using "fminsearch"
options = optimset('Display','iter');
[beta2, f2] = fminsearch(@func2, initial, options);
