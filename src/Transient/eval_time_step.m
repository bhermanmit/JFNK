function x = eval_time_step(x_o,opt)

global info geom neut th steady

% construct operators
M = create_operators_trans('M',x_o);
F = create_operators_trans('F',x_o);
E = create_operators_trans('E',x_o);
S = create_operators_trans('S',x_o);
R = create_operators_trans('R',x_o);

% get problem size
n = geom.n;
dx = geom.dx;

% get timestep
dt = info.dt;

% get constants from object
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
vel = neut.vel;
beta = neut.beta;
lambd = neut.lambd;
lamb = steady.lamb;
c_tilde = steady.c_tilde;
w = th.w;
A = th.area;

% preallocate x
x = zeros(9*n,1);

% extract vectors from x_o
phi = x_o(1:n);
c = x_o(n+1:2*n);
Q = x_o(2*n+1:3*n);
T = x_o(3*n+1:4*n);
rho = x_o(4*n+1:5*n);

% solve flux equation
x(1:n) = phi - vel*dt*(M*phi - (1-beta)*lamb*F*phi - lambd*c);

% solve precursor
x(n+1:2*n) = c - dt*(lambd*c - beta*lamb*F*phi);

% energy deposition
x(2*n+1:3*n) = c_tilde*E*phi*dx;

% temperature calculation
tmp = S*T - R*Q;
tmp(1) = tmp(1) - Tin;
x(3*n+1:4*n) = T - (w*dt)./(rho*A*dx).*tmp;

% density distribution (Table lookup)
for i = 1:n
    x(4*n+i:5*n) = XSteam('rho_pT',P,T(i))/1000;
end

% absorption cross section
x(5*n+1:6*n) =  absxsREF + DabsxsDrho*(rho - rhoREF);

if strcmp(opt,'yes')
    x(5*n+1:5*n+50) = x(5*n+1:5*n+50) + 0.01*absxsREF;
end

% nu-fission cross section
x(6*n+1:7*n) = nfissREF + DnfissDrho*(rho - rhoREF);

% diffusion coefficient
x(7*n+1:8*n) = diffREF + DdiffDrho*(rho - rhoREF);

% kappa-fission cross section
x(8*n+1:9*n) = kfissREF + DkfissDrho*(rho - rhoREF);

end