function process_steady(x)

global geom steady

% get problem size
n = geom.n;

% get information out of x
steady.phi = x(1:n);
steady.c_tilde = x(n+1);
steady.Q = x(n+2:2*n+1);
steady.T = x(2*n+2:3*n+1);
steady.rho = x(3*n+2:4*n+1);
steady.absxs = x(4*n+2:5*n+1);
steady.nfiss = x(5*n+2:6*n+1);
steady.diff = x(6*n+2:7*n+1);
steady.kfiss = x(7*n+2:8*n+1);
steady.lamb = x(8*n+2);

end