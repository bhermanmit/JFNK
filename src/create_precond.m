function [L,U] = create_precond(x)

global geom neut

% construct operators
M = create_operators('M',x);
F = create_operators('F',x);
E = create_operators('E',x);
S = create_operators('S',x);
R = create_operators('R',x);
MD = create_operators('MD',x);

% get number of meshes
n = geom.n;
dx = geom.dx;

% allocate function%
J = sparse(zeros(8*n+2)); % jacobian of function

% extract vectors from x
DabsxsDrho = neut.DabsxsDrho;
DnfissDrho = neut.DnfissDrho;
DdiffDrho = neut.DdiffDrho;
DkfissDrho = neut.DkfissDrho;

% extract vectors from x
phi = x(1:n);                   % fluxes
c_tilde = x(n+1);               % normalization constant
kfiss = x(7*n+2:8*n+1);         % kappa-fission macro xs
lamb = x(8*n+2);                % eigenvalue

% flux equation by flux
J(1:n,1:n) = (M - lamb*F);

% flux equation by absxs
J(1:n,4*n+2:5*n+1) = diag(phi);

% flux equation by nfiss
J(1:n,5*n+2:6*n+1) = -lamb*diag(phi);

% flux equation by diff
J(1:n,6*n+2:7*n+1) = MD;

% flux by eigenvalue
J(1:n,8*n+2) = -F*phi;

% norm by flux
J(n+1,1:n) = -c_tilde*dx*(kfiss');

% norm by ctilde
J(n+1,n+1) = -dx*(kfiss')*phi;

% norm by kfiss
J(n+1,7*n+2:8*n+1) = -c_tilde*dx*(phi');

% energy by flux
J(n+2:2*n+1,1:n) = -E*c_tilde*dx;

% energy by ctilde
J(n+2:2*n+1,n+1) = -E*phi*dx;

% energy by energy
J(n+2:2*n+1,n+2:2*n+1) = eye(n);

% energy by kfiss
J(n+2:2*n+1,7*n+2:8*n+1) = -c_tilde*dx*diag(phi);

% temperature by energy
J(2*n+2:3*n+1,n+2:2*n+1) = -R;

% temperature by temperature
J(2*n+2:3*n+1,2*n+2:3*n+1) = S;

% density by temperature
J(3*n+2:4*n+1,2*n+2:3*n+1) = -0.0023393*eye(n);

% density by density
J(3*n+2:4*n+1,3*n+2:4*n+1) = eye(n);

% absorption by density
J(4*n+2:5*n+1,3*n+2:4*n+1) = -DabsxsDrho*eye(n);

% absorption by absorption
J(4*n+2:5*n+1,4*n+2:5*n+1) = eye(n);

% nfiss by density
J(5*n+2:6*n+1,3*n+2:4*n+1) = -DnfissDrho*eye(n);

% nfiss by nfiss
J(5*n+2:6*n+1,5*n+2:6*n+1) = eye(n);

% diff by density
J(6*n+2:7*n+1,3*n+2:4*n+1) = -DdiffDrho*eye(n);

% diff by diff
J(6*n+2:7*n+1,6*n+2:7*n+1) = eye(n);

% kfiss by density
J(7*n+2:8*n+1,3*n+2:4*n+1) = -DkfissDrho*eye(n);

% kfiss by kfiss
J(7*n+2:8*n+1,7*n+2:8*n+1) = eye(n);

% eigenvalue by flux
J(8*n+2,1:n) = -(phi');

% add a 1 to the diagonal
J(8*n+2,8*n+2) = 1;

% form constant preconditioner
[L,U] = ilu(J);

end