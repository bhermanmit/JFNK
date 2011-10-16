function [x,rho] = gmres_restart(A,x,b,res,maxiter,tol)

% get size of A
m = size(A,1);

% preallocate
Q = zeros(m,res+1);
H = zeros(res+1,res);
rho = ones(maxiter,1);

% begin iteration counter
k = 1;

% begin while loop
for k = 1:maxiter
    
    % compute initial residual
    r = b - A*x;
    rho(k) = norm(r);
    beta = rho(k);
    
    % check convergence
    if beta < tol
        break
    end
    
    % compute first q
    Q(:,1) = r/beta;
    
    % begin iteration
    for n = 1:res
        
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
        
    end
    
    % compute x
    x = x + Q(:,1:n)*y;
       
end
end