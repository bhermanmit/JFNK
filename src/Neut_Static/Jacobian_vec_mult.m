function Jy = Jacobian_vec_mult(M,F,x,y)

% get problem size
n = size(M,1);

% preallocate Jy vector
Jy = zeros(n+1,1);

% extract info
phi = x(1:n);
lamb = x(n+1);

% perform Jy multiplication
Jy(1:n) = (M - lamb*F)*y(1:n) + (-F*phi)*y(n+1);
Jy(n+1) = (-phi')*y(1:n);

end