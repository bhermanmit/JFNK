function [Q,H] = arnoldi(A,b,N)

% get row size of A matrix
m = size(A,1);

% preallocate Q and H matrices
Q = zeros(m,N);
H = zeros(N,N);

% compute first q
Q(:,1) = b/norm(b);

% begin loop over columns
for n = 1:N
    
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
    
end

end