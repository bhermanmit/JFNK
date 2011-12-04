function Fun = neut_res_fun(M,F,x)

% get problem size
n = size(M,1);

% preallocate function eval
Fun = zeros(n+1,1);

% extract data
phi = x(1:n);
lamb = x(n+1);

% evaluate residual
Fun(1:n) = M*phi - lamb*F*phi;
Fun(n+1) = -1/2*(phi')*phi + 1/2;

end