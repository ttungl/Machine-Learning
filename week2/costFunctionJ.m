function J = costFunctionJ(X, y, theta)

% X: design matrix containing the training examples.
% y: class labels

m=size(X,1); % num of training
predictions = X*theta; % predictions of hypothesis on all m examples
sqrErrors = (predictions-y).^2; % squared errors.

J=1/(2*m) * sum(sqrErrors);