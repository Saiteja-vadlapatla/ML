function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h = X*theta;
cost = sum((h - y).^2);
avg_cost = (1.0/(2*m))*cost;
reg_cost = sum(theta(2:end,:).^2);
avg_reg = (lambda/(2*m))*reg_cost;

J = avg_cost + avg_reg;

avg_grad = (1.0/m)*sum((h-y).*X);
theta_reg = zeros(size(theta));
theta_reg(2:end,:) = (lambda/m)*(theta(2:end,:));

grad = avg_grad + theta_reg';







% =========================================================================

grad = grad(:);

end
