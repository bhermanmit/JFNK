function Jy = Jacobian_vec_FD(myfun,x,y)

% set parameters
b = 1e-8;
N = length(y);

% compute epsilon
epsilon = b*sum(x)/(N*norm(y));

% approximate matrix vector multiplication
Jy = (myfun(x+epsilon*y) - myfun(x))/epsilon;

end