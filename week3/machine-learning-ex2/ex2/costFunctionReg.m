function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% cost function
z = X * theta;
sigmo = sigmoid(z); % h(x) = g(z); return a matrix (z x z)

Y_predict = y'*log(sigmo)+(1-y')*log(1-sigmo);

% regularized = (lambda/(2*m))*(theta'*theta-theta(1)^2); % incorrect
regularized = (lambda/(2*m))*sum(theta(2:end).^2); % correct

J = ((-1)*(1/m) * Y_predict) + regularized; % cost

% gradient descent
% grad = (1/m) * X' * (sigmo-y) + (lambda/m) * theta.*(ones(size(theta))); % incorrect
grad = (1/m)*((sigmo-y)'*X)' + (lambda/m) .* theta .* [0; ones(size(theta)-1, 1)]; % correct

% =============================================================

end
