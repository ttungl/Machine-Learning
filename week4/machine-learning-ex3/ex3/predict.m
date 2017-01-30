function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% tem1
tem1 = [ones(m, 1) X];
z_theta1 = tem1*Theta1';

% tem2
tem2 = [ones(size(z_theta1, 1), 1) sigmoid(z_theta1)]
z_theta2 = tem2 * Theta2';

% predict
predict = sigmoid(z_theta2);

% max
[p_m, i_m] = max(predict, [], 2);
p = i_m;

% =========================================================================


end
