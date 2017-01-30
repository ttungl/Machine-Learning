function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    x = X(:,2);  % get data from X, the profit.

    %% theta(0,0) initial
    h = theta(1) + (x*theta(2)); % hypothesis 
    % repeat until convergence
    theta_1 = theta(1) - alpha*(1/m)*sum(h - y); 
    theta_2 = theta(2) - alpha*(1/m)*sum((h-y).*x); % vector multiplication

    % simultaneously update theta
    theta = [theta_1; theta_2];

    % update/save the cost function J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end
    disp(min(J_history));
end
