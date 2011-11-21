function [L,U] = create_precond_neut(M,F,phi,lamb)

% get problem size
n = size(M,1);

% number of nonzeros
nnz = n + 2*(n-1) + 2*n + 1;

% preallocate Jacobian
J = spalloc(n+1,n+1,nnz);

% place terms in J
J(1:n,1:n) = M - lamb*F;
J(1:n,n+1) = -F*phi;
J(n+1,1:n) = -phi';

% place approx term for eigenvalue
J(n+1,n+1) = 1;

% ilu-0 preconditioner
[L,U] = ilu(J);

end