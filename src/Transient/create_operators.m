function out_mat = create_operators(oper,x)

global geom neut th

% extract problem size
n = geom.n;

% Find Operator to Create
switch oper
    
    % Create M operator
    case 'M'
        
        % number of nonzeros
        nnz = n + 2*(n-1);
        
        % preallocate sparse matrix vectors
        rowvec = zeros(nnz,1);
        colvec = zeros(nnz,1);
        valvec = zeros(nnz,1);
        
        % extract data from data objects
        alb = neut.alb;
        dx = geom.dx;
        
        % extract needed data from x vector
        D = x(6*n+2:7*n+1);
        absxs = x(4*n+2:5*n+1);
        
        % shift diffusion coefficient vector
        Dm1 = circshift(D,1);
        Dp1 = circshift(D,-1);
        
        % create diagonal (left boundary, interior, right boundary)
        rowvec(1:n) = 1:n;
        colvec(1:n) = 1:n;
        
        % left boundary
        valvec(1) = 2/dx*((D(1)*(1-alb(1)))/(4*D(1)*(1+alb(1)) + dx*(1-alb(1))) + ...
            1/dx*(D(1)*D(2))/(D(1) + D(2))) + absxs(1);

        % interior cells
        valvec(2:n-1) = 2/dx^2*((Dm1(2:n-1).*D(2:n-1))./(Dm1(2:n-1) + D(2:n-1)) + ...
            (D(2:n-1).*Dp1(2:n-1))./(D(2:n-1) + Dp1(2:n-1))) + absxs(2:n-1);

        % right boundary
        valvec(n) = 2/dx*(1/dx*(D(n-1)*D(n))/(D(n-1) + D(n)) + (D(n)*(1-alb(2))) / ...
            (4*D(n)*(1+alb(2)) + dx*(1-alb(2)))) + absxs(n);
        
        % create subdiagonal -1
        rowvec(n+1:2*n-1) = 2:n;
        colvec(n+1:2*n-1) = 1:n-1;
        valvec(n+1:2*n-1) = -2/dx^2*((Dm1(2:n).*D(2:n))./(Dm1(2:n) + D(2:n)));
        
        % create superdiagonal +1
        rowvec(2*n:3*n-2) = 1:n-1;
        colvec(2*n:3*n-2) = 2:n;
        valvec(2*n:3*n-2) = -2/dx^2*((D(1:n-1).*Dp1(1:n-1))./(D(1:n-1) +Dp1(1:n-1)));
        
        % create sparse matrix for output
        out_mat = sparse(rowvec,colvec,valvec);
        
    % Create F operator
    case 'F'
        
        % number of nonzeros
        nnz = n;
        
        % extract nfiss from x vector
        nfiss = x(5*n+2:6*n+1);
        
        % preallocate sparse matrix vectors
        rowvec = zeros(nnz,1);
        colvec = zeros(nnz,1);
        valvec = zeros(nnz,1);
        
        % calculate diagonal
        rowvec(1:n) = 1:n;
        colvec(1:n) = 1:n;
        valvec(1:n) = nfiss(1:n);
        
        % create sparse matrix for output
        out_mat = sparse(rowvec,colvec,valvec);
        
    % Create E operator
    case 'E'
        
        % number of nonzeros
        nnz = n;
        
        % extract kfiss from x vector
        kfiss = x(7*n+2:8*n+1);
        
        % preallocate sparse matrix vectors
        rowvec = zeros(nnz,1);
        colvec = zeros(nnz,1);
        valvec = zeros(nnz,1);
        
        % calculate diagonal
        rowvec(1:n) = 1:n;
        colvec(1:n) = 1:n;
        valvec(1:n) = kfiss(1:n);
        
        % create sparse matrix for output
        out_mat = sparse(rowvec,colvec,valvec);
        
    % Create S operator    
    case 'S'
        
        % number of nonzeros
        nnz = n + (n-1);
        
        % preallocate sparse matrix vectors
        rowvec = zeros(nnz,1);
        colvec = zeros(nnz,1);
        valvec = zeros(nnz,1);
        
        % calculate diagonal
        rowvec(1:n) = 1:n;
        colvec(1:n) = 1:n;
        valvec(1:n) = 1;
        
        % calculate subdiagonal -1
        rowvec(n+1:2*n-1) = 2:n;
        colvec(n+1:2*n-1) = 1:n-1;
        valvec(n+1:2*n-1) = -1;        
        
        % create sparse matrix for output
        out_mat = sparse(rowvec,colvec,valvec);
        
    % Create R operator
    case 'R'
        
        % number of nonzeros
        nnz = n + (n-1);

        % preallocate sparse matrix vectors
        rowvec = zeros(nnz,1);
        colvec = zeros(nnz,1);
        valvec = zeros(nnz,1);
        
        % get data from object
        w = th.w;
        cp = th.cp;
        
        % calculate diagonal
        rowvec(1:n) = 1:n;
        colvec(1:n) = 1:n;
        valvec(1:n) = 1/(2*w*cp);
        
        % calculate subdiagonal -1
        rowvec(n+1:2*n-1) = 2:n;
        colvec(n+1:2*n-1) = 1:n-1;
        valvec(n+1:2*n-1) = 1/(2*w*cp);        
        
        % create sparse matrix for output
        out_mat = sparse(rowvec,colvec,valvec);
        
    % Create MD operator
    case 'MD'
        
        % number of nonzeros
        nnz = n + 2*(n-1);
        
        % preallocate sparse matrix vectors
        rowvec = zeros(nnz,1);
        colvec = zeros(nnz,1);
        valvec = zeros(nnz,1);
        
        % extract data from data objects
        alb = neut.alb;
        dx = geom.dx;
        
        % extract needed data from x vector
        D = x(6*n+2:7*n+1);
        phi = x(1:n);
        
        % shift diffusion coefficient and phi vectors
        Dm1 = circshift(D,1);
        Dp1 = circshift(D,-1);
        phim1 = circshift(phi,1);
        phip1 = circshift(phi,-1);
        
        % create diagonal (left boundary, interior, right boundary)
        rowvec(1:n) = 1:n;
        colvec(1:n) = 1:n;
        
        % left boundary
        valvec(1) = 2/dx*((dx*(1-alb(1))^2)/(4*D(1)*(1+alb(1)) + dx*(1-alb(1)))^2 + ...
            1/dx*D(2)^2/(D(1) + D(2))^2)*phi(1);
                
        % interior cells
        valvec(2:n-1) = 2/dx^2*(Dm1(2:n-1).^2./(Dm1(2:n-1) + D(2:n-1)).^2 + ...
            Dp1(2:n-1).^2./(D(2:n-1) + Dp1(2:n-1)).^2).*phi(2:n-1);
        
        % right boundary
        valvec(n) = 2/dx*((dx*(1-alb(2))^2)/(4*D(n)*(1+alb(2)) + dx*(1-alb(2)))^2 + ...
            1/dx*D(n-1)^2/(D(n-1) + D(n))^2)*phi(n);
        
        % create subdiagonal -1
        rowvec(n+1:2*n-1) = 2:n;
        colvec(n+1:2*n-1) = 1:n-1;
        valvec(n+1:2*n-1) = -2/dx^2*(Dm1(2:n).^2./(Dm1(2:n) + D(2:n)).^2).*phim1(2:n);
        
        % create superdiagonal +1
        rowvec(2*n:3*n-2) = 1:n-1;
        colvec(2*n:3*n-2) = 2:n;
        valvec(2*n:3*n-2) = -2/dx^2*(Dp1(1:n-1).^2./(D(1:n-1) + Dp1(1:n-1)).^2).*phip1(1:n-1);
        
        % create sparse matrix for output
        out_mat = sparse(rowvec,colvec,valvec);
        
    case default
        
        error('Operator does not exist!');
               
end

end