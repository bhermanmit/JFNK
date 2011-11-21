function [k,phi]=NewtonKrylov_neut(M,F,phig,kg)

% get matrix size
m = size(M,1);

% preallocate matrices and vectors
G = zeros(m+1,1); % the matrix to evaulate the function
J = sparse(zeros(m+1)); % jacobian of function
%phi = zeros(M,2);
%lam = zeros(1,2);

% set guesses
phi = phig; % initial guess of flux
lam = 1/kg;  % initial guess of eigenvalue
dx = 0.01*ones(m+1,1);

% begin newton loop
for i = 1:10000
    
    % Evaluate function
    G(1:m) = M*phi - lam*F*phi;
    G(m+1) = -0.5*(phi.')*phi+0.5;
    
    % compute residual norm
    res = norm(G);
    
    % exit if residual is small
    if res < 1e-6
        break
    end
    
    % Display residual
    fprintf('Iter: %d     Res: %d\n',i,res);
    
    % evaluate Jacobian
    J(1:m,1:m) = M - lam*F;
    J(1:m,m+1) = -F*phi;
    J(m+1,1:m) = -phi.';
    
    % compute preconditioner
  %  setup.type = 'crout';
  %  setup.milu = 'row';
  %  setup.droptol = 0.1;
  %  [L,U] = ilu(J,setup);
  %  P = L*U;
   P = eye(length(dx));
    
    % GMRES solution
    [dx,err] = gmres_restart_givens_prec(P,J,dx,-G,100,1,1e-7);
   
    % Update values
    phi = phi + dx(1:m);
    lam = lam + dx(m+1);
    
end

% compute multiplication factor
k = 1/lam;

end