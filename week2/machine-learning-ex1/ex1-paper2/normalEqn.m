function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

% theta = zeros(size(X, 2), 1);
theta = zeros(size(X, 5), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

theta = pinv(X'*X)*X'*y;
% this will give you the value of data that minimizes your cost function.

% -------------------------------------------------------------


% ============================================================

end
