function [x,err] = gmres_restart_givens_prec(P,A,x,b,res,maxiter,tol)

% get size of A
m = size(A,1);

% preallocate for max storage
Q = zeros(m,res+1);
H = zeros(res+1,res);
err = zeros(maxiter*res,1);
c = zeros(res+1,1);
s = zeros(res+1,1);

% begin iteration counter
k = 1;

% begin while loop
for k = 1:maxiter
    
    % compute initial residual
    r = P\(b - A*x);
    beta = norm(r);
    
    % set up g vector
    g = beta*eye(res+1,1);
    
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
        v = P\(A*Q(:,n));
        
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
        
        % apply givens rotation
        [H,c,s,g] = given_rot(H,c,s,g,n);
        
        % get error
        err(n+res*(k-1)) = abs(g(n+1));
        
        % check convergence
        if err(n+res*(k-1)) < tol
            break
        end
        
    end
    
    % compute y
    y = H(1:n,1:n)\g(1:n);
    
    % compute x
    x = x + Q(:,1:n)*y;
    
    % check convergence
    if err(k*n) < tol
        break
    end
    
end

end

function [H,c,s,g] = given_rot(H,c,s,g,n)
         
        % apply all previous and current rotations to new column
        for i = 1:n-1
            
            % apply rotation and store in temporary vars
            tmp1 = c(i)*H(i,n) - s(i)*H(i+1,n);
            tmp2 = s(i)*H(i,n) + c(i)*H(i+1,n);
            
            % computation complete move temp vars to matrix
            H(i,n) = tmp1;
            H(i+1,n) = tmp2;
            
        end
        
        % compute new c and s
        c(n) = H(n,n)/sqrt(H(n,n)^2+H(n+1,n)^2);
        s(n) = -H(n+1,n)/sqrt(H(n,n)^2+H(n+1,n)^2);
        
        % apply rotation and store in temporary vars for step n
        tmp1 = c(n)*H(n,n) - s(n)*H(n+1,n);
        tmp2 = s(n)*H(n,n) + c(n)*H(+1,n);
        
        % computation complete move temp vars to matrix
        H(n,n) = tmp1;
        H(n+1,n) = tmp2;
                
        % zero out i+1 element
        H(n+1,n) = 0.0;
        
        % apply givens rotation to right hand side
        tmp1 = c(n)*g(n) - s(n)*g(n+1);
        tmp2 = s(n)*g(n) + c(n)*g(n+1);
        g(n) = tmp1;
        g(n+1) = tmp2;
        
end