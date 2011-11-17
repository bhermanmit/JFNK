function Ay = matvecmult(myfun,x,y)

% get perturbation parameter
%epsilon = sqrt(eps);
%epsilon=1e-2;

% set parameters
b = 1e-8;
N = length(y);

% compute epsilon
epsilon = b*sum(x)/(N*norm(y));

% approximate matrix vector multiplication
Ay = (myfun(x+epsilon*y) - myfun(x))/epsilon;

end