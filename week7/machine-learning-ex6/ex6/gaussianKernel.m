function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%
summation = norm(x1-x2) .^2;

% K_gaussian 
sim = exp(-(summation/(2*sigma .^2)));


% ----
% Tung Le's result
% >> ex6
% Loading and Visualizing Data ...
% Program paused. Press enter to continue.

% Training Linear SVM ...

% Training ......................................................................
% ........................................ Done!

% Program paused. Press enter to continue.

% Evaluating the Gaussian Kernel ...
% Gaussian Kernel between x1 = [1; 2; 1], x2 = [0; 4; -1], sigma = 2.000000 :
%         0.324652
% (for sigma = 2, this value should be about 0.324652)
% Program paused. Press enter to continue.

% =============================================================
    
end
