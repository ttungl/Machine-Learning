function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% h_theta(x) = sum{j=0:n} theta_j * x_j ; % prediction = theta' * X
% vectorization linear regression hypothesis
predict = X*theta; 

% squared errors; gradient descent
sqrErrors = (predict - y).^2; 

% cost function J(theta)
J = 1/(2*m)*sum(sqrErrors); %% return this cost function to compute gradient descent.

% =========================================================================

end
