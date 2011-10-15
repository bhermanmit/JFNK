function [x,rho] = gmres_basic(A,x,b,maxiter)

% get size of A
m = size(A,1);

% preallocate
Q = zeros(m,maxiter+1);
H = zeros(maxiter+1,maxiter);
r = zeros(m,maxiter);
rho = zeros(maxiter+1,1);

% compute initial residual
r(:,1) = b - A*x;
rho(1) = norm(r(:,1));
beta = rho(1);

% compute first q
Q(:,1) = r(:,1)/beta;

% begin iteration
for n = 1:maxiter
    
    % begin Arnoldi for step n
    % compute vector v
    v = A*Q(:,n);
    
    % loop around all previous vectors
    for j = 1:n
        
        % compute orthogonal projection of A onto new Krylov subspace
        % H = Q'*A*Q
        H(j,n) = Q(:,j)'*v;
        
        % solves equation 33.4 in Trefethen so that Aq = h_(n+1)q_(n+1)
        v = v - H(j,n)*Q(:,j);
        
    end
    
    % compute new h
    H(n+1,n) = norm(v);
    
    % solve for next column
    Q(:,n+1) = v/H(n+1,n);
        
    % solve least squares problem with y
    y = H(1:n+1,1:n)\(beta*eye(n+1,1));
    
    % compute residual norm
    rho(n+1) = norm(beta*eye(n+1,1) - H(1:n+1,1:n)*y);
   
    % check convergence
    if rho(n+1) < 1e-5
        break;
    end
    
end

% compute x
x = x + Q(:,1:n)*y;

end