function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
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
%y=abs(y-mean(y))/(max(y)-min(y));
%X(:,2)=abs(X(:,2)-mean(X(:,2)))/(max(X(:,2)-min(X(:,2))));
hypo=X*theta;
%term1=(hypo-y);
%term2=X'*term1;
%term3=sum(term2);
%minus=alpha*(term3/m);
%mean0=mean(term2)*alpha;
%theta=theta-mean0;
theta1=theta(1,1)-alpha*mean((hypo-y) .* X(:,1));
theta2=theta(2,1)-alpha*mean((hypo-y) .* X(:,2));
theta=[theta1;theta2];
%theta=theta-alpha*mean((hypo-y) .* X(:,1));



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
