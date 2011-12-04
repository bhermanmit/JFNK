function Fun = coupled_trans_res_fun(x,x_o,cr)

global info geom neut th steady M F E S R

% construct operators
M = create_operators_trans('M',x);
F = create_operators_trans('F',x);
E = create_operators_trans('E',x);
S = create_operators_trans('S',x);
R = create_operators_trans('R',x);

% get problem size
n = geom.n;
dx = geom.dx;

% get timestep
dt = info.dt;

% extract previous timestep
phi_o = x_o(1:n);
c_o = x_o(n+1:2*n);
T_o = x_o(3*n+1:4*n);

% get constants from object
%P = th.P; % pressure of system
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
vel = neut.vel;
beta = neut.beta;
lambd = neut.lambd;
lamb = steady.lamb;
c_tilde = steady.c_tilde;
w = th.w;
A = th.area;

% allocate function
Fun = zeros(9*n,1);

% extract vectors from x
phi = x(1:n);
c = x(n+1:2*n);
Q = x(2*n+1:3*n);
T = x(3*n+1:4*n);
rho = x(4*n+1:5*n);
absxs = x(5*n+1:6*n);
nfiss = x(6*n+1:7*n);
diff = x(7*n+1:8*n);
kfiss = x(8*n+1:9*n);

% solve flux equation
Fun(1:n) = phi - phi_o + vel*dt*(M*phi - (1-beta)*lamb*F*phi - lambd*c);

% solve precursor
Fun(n+1:2*n) = c - c_o + dt*(lambd*c - beta*lamb*F*phi);

% energy deposition
Fun(2*n+1:3*n) = Q - c_tilde*E*phi*dx;

% temperature calculation
Fun(3*n+1:4*n) = S*T - R*Q;
Fun(3*n+1) = Fun(3*n+1) - Tin;
Fun(3*n+1:4*n) = T - T_o + (w*dt)./(rho*A*dx).*Fun(3*n+1:4*n);

% density distribution (Table lookup)
% for i = 1:n
%     Fun(4*n+i) = rho(i) - XSteam('rho_pT',P,T(i))/1000;
% end
Fun(4*n+1:5*n) = (rho - rhoREF) - DrhoDtemp*(T - Tref);

% absorption cross section
Fun(5*n+1:6*n) = (absxs - absxsREF) - DabsxsDrho*(rho - rhoREF) - absxsREF.*cr;

% nu-fission cross section
Fun(6*n+1:7*n) = (nfiss - nfissREF) - DnfissDrho*(rho - rhoREF);

% diffusion coefficient
Fun(7*n+1:8*n) = (diff - diffREF) - DdiffDrho*(rho - rhoREF);

% kappa-fission cross section
Fun(8*n+1:9*n) = (kfiss - kfissREF) - DkfissDrho*(rho - rhoREF);

end