function J = create_Jacobian(x)

global info geom neut th steady

% construct operators
M = create_operators_trans('M',x);
F = create_operators_trans('F',x);
E = create_operators_trans('E',x);
S = create_operators_trans('S',x);
R = create_operators_trans('R',x);
MD = create_operators_trans('MD',x);

% get number of meshes
n = geom.n;
dx = geom.dx;

% allocate function%
J = zeros(9*n); % jacobian of function

% extract vectors from x
dt = info.dt;
vel = neut.vel;
beta = neut.beta;
lambd = neut.lambd;
c_tilde = steady.c_tilde;
lamb = steady.lamb;
w = th.w;
A = th.area;
Tin = th.Tin;
DabsxsDrho = neut.DabsxsDrho;
DnfissDrho = neut.DnfissDrho;
DdiffDrho = neut.DdiffDrho;
DkfissDrho = neut.DkfissDrho;
DrhoDtemp = th.DrhoDtemp;

% extract vectors from x
phi = x(1:n);
rho = x(4*n+1:5*n);
rho_mat = repmat(rho,1,n);
T = x(3*n+1:4*n);
Q = x(2*n+1:3*n);

% flux equation by flux
J(1:n,1:n) = eye(n) + vel*dt*(M - (1-beta)*lamb*F);

% flux equation by precursor
J(1:n,n+1:2*n) = -vel*dt*lambd*eye(n);

% flux equation by absxs
J(1:n,5*n+1:6*n) = vel*dt*diag(phi);

% flux equation by nfiss
J(1:n,6*n+1:7*n) = -vel*dt*(1-beta)*lamb*diag(phi);

% flux equation by diff
J(1:n,7*n+1:8*n) = vel*dt*MD;

% precursor by flux
J(n+1:2*n,1:n) = -dt*beta*lamb*F;

% precursor by precursor
J(n+1:2*n,n+1:2*n) = eye(n) + dt*lambd*eye(n);

% precursor by nfiss
J(n+1:2*n,6*n+1:7*n) = -dt*beta*lamb*diag(phi);

% energy by flux
J(2*n+1:3*n,1:n) = -E*c_tilde*dx;

% energy by energy
J(2*n+1:3*n,2*n+1:3*n) = eye(n);

% energy by kfiss
J(2*n+1:3*n,8*n+1:9*n) = -c_tilde*dx*diag(phi);

% temperature by energy
J(3*n+1:4*n,2*n+1:3*n) = -(w*dt)./(rho_mat*A*dx).*R;

% temperature by temperature
J(3*n+1:4*n,3*n+1:4*n) = eye(n) + (w*dt)./(rho_mat*A*dx).*S;

% temperature by density
tmp = (S*T - R*Q);
tmp(1) = tmp(1) - Tin;
J(3*n+1:4*n,4*n+1:5*n) = diag((-(w*dt)/(A*dx).*(1./rho.^2)).*tmp);

% density by temperature
J(4*n+1:5*n,3*n+1:4*n) = -DrhoDtemp*eye(n);

% density by density
J(4*n+1:5*n,4*n+1:5*n) = eye(n);

% absorption by density
J(5*n+1:6*n,4*n+1:5*n) = -DabsxsDrho*eye(n);

% absorption by absorption
J(5*n+1:6*n,5*n+1:6*n) = eye(n);

% nfiss by density
J(6*n+1:7*n,4*n+1:5*n) = -DnfissDrho*eye(n);

% nfiss by nfiss
J(6*n+1:7*n,6*n+1:7*n) = eye(n);

% diff by density
J(7*n+1:8*n,4*n+1:5*n) = -DdiffDrho*eye(n);

% diff by diff
J(7*n+1:8*n,7*n+1:8*n) = eye(n);

% kfiss by density
J(8*n+1:9*n,4*n+1:5*n) = -DkfissDrho*eye(n);

% kfiss by kfiss
J(8*n+1:9*n,8*n+1:9*n) = eye(n);

J = sparse(J);

end