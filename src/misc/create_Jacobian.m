function J = create_Jacobian(x)%,y)

global geom neut th M F E S R

% get problem size
n = geom.n;
dx = geom.dx;

% allocate function%
J = sparse(zeros(3*n+2)); % jacobian of function
% J = zeros(n+2,1);

% get constants from object
P = th.P; % pressure of system

% extract vectors from x
phi = x(1:n);                   % fluxes
c_tilde = x(n+1);               % normalization constant
lamb = x(3*n+2);                % eigenvalue
kfiss = neut.kfissREF*ones(n,1);

% flux equation by flux
J(1:n,1:n) = (M - lamb*F);

% flux by eigenvalue
J(1:n,3*n+2) = -F*phi;

% norm by flux
J(n+1,1:n) = -c_tilde*dx*(kfiss');
% norm by ctilde
J(n+1,n+1) = -dx*(kfiss')*phi;

% energy by flux
J(n+2:2*n+1,1:n) = -E*c_tilde*dx;

% energy by ctilde
J(n+2:2*n+1,n+1) = -E*phi*dx;

% energy by energy
J(n+2:2*n+1,n+2:2*n+1) = eye(n);

% temperature by energy
J(2*n+2:3*n+1,n+2:2*n+1) = -R;

% temperature by temperature
J(2*n+2:3*n+1,2*n+2:3*n+1) = S;

% eigenvalue by flux
J(3*n+2,1:n) = -(phi');

end