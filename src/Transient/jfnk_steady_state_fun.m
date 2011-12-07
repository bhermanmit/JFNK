function Fun = jfnk_steady_state_fun(x)

global geom neut th M F E S R

% construct operators
M = create_operators('M',x);
F = create_operators('F',x);
E = create_operators('E',x);
S = create_operators('S',x);
R = create_operators('R',x);

% get problem size
n = geom.n;
dx = geom.dx;

% get constants from object
Qr = th.Qr; % reactor power
P = th.P; % pressure of system
Tin = th.Tin; % inlet temperature
absxsREF = neut.absxsREF;
nfissREF = neut.nfissREF;
diffREF = neut.diffREF;
kfissREF = neut.kfissREF;
DabsxsDrho = neut.DabsxsDrho;
DnfissDrho = neut.DnfissDrho;
DdiffDrho = neut.DdiffDrho;
DkfissDrho = neut.DkfissDrho;
rhoREF = th.rhoREF;
Tref = th.Tref;
DrhoDtemp = th.DrhoDtemp;

% allocate function
Fun = zeros(8*n+2,1);

% extract vectors from x
phi = x(1:n);                   % fluxes
c_tilde = x(n+1);               % normalization constant
Q = x(n+2:2*n+1);               % power in cell
T = x(2*n+2:3*n+1);             % cell average temperature
rho = x(3*n+2:4*n+1);           % cell average density
absxs = x(4*n+2:5*n+1);         % absorption macro xs
nfiss = x(5*n+2:6*n+1);         % nu-fission macro xs
diff = x(6*n+2:7*n+1);          % diffusion coefficient
kfiss = x(7*n+2:8*n+1);         % kappa-fission macro xs
lamb = x(8*n+2);                  % eigenvalue
% kfissREF = neut.kfissREF*ones(n,1);

% solve flux equation
Fun(1:n) = M*phi - lamb*F*phi;

% solve Normalization Equation
Fun(n+1) = Qr - c_tilde*dx*kfiss'*phi;

% energy deposition
Fun(n+2:2*n+1) = Q - c_tilde*dx*E*phi;

% temperature calculation
Fun(2*n+2:3*n+1) = S*T - R*Q;
Fun(2*n+2) = Fun(2*n+2) - Tin;

% density distribution (Table lookup)
%for i = 1:n
%    Fun(3*n+1+i) = rho(i) - XSteam('rho_pT',P,T(i))/1000;
%end
Fun(3*n+2:4*n+1) = (rho - rhoREF) - DrhoDtemp*(T - Tref);

% absorption cross section
Fun(4*n+2:5*n+1) = (absxs - absxsREF) - DabsxsDrho*(rho - rhoREF);

% nu-fission cross section
Fun(5*n+2:6*n+1) = (nfiss - nfissREF) - DnfissDrho*(rho - rhoREF);

% diffusion coefficient
Fun(6*n+2:7*n+1) = (diff - diffREF) - DdiffDrho*(rho - rhoREF);

% kappa-fission cross section
Fun(7*n+2:8*n+1) = (kfiss - kfissREF) - DkfissDrho*(rho - rhoREF);%*kfissconst;

% eigenvalue
Fun(8*n+2) = -1/2*(phi')*phi + 1/2;

end