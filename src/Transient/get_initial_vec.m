function x = get_initial_vec()

global info geom neut steady

% get problem size
n = geom.n;

% get number of time steps
Nt = info.time/info.dt;

% extract from objects
beta = neut.beta;
lambd = neut.lambd;
phi = steady.phi;
lamb = steady.lamb;
nfiss = steady.nfiss;
Q = steady.Q;
T = steady.T;
rho = steady.rho;
absxs = steady.absxs;
diff = steady.diff;
kfiss = steady.kfiss;

% preallocate vector
x = zeros(9*n,Nt);

% record flux
x(1:n,1) = phi;

% get precursor steady conc and record in vector
x(n+1:2*n,1) = ((beta*lamb)/lambd)*nfiss.*phi;

% set energy deposition
x(2*n+1:3*n,1) = Q;

% set temperatures
x(3*n+1:4*n,1) = T;

% set density
x(4*n+1:5*n,1) = rho;

% set cross sections
x(5*n+1:6*n,1) = absxs;
x(6*n+1:7*n,1) = nfiss;
x(7*n+1:8*n,1) = diff;
x(8*n+1:9*n,1) = kfiss;
