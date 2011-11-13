function Ay = matvecmult(myfun,x,y)

% get perturbation parameter
epsilon = sqrt(eps);

% approximate matrix vector multiplication
Ay = (myfun(x+epsilon*y) - myfun(x))/epsilon;

end