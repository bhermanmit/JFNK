function x = run_neut_only(myfun)

global geom neut

% get problem size
n = geom.n;

% build loss matrix
M = create_operators_neut('M',geom,neut);

% build production matrix
F = create_operators_neut('F',geom,neut);

% set initial guess for power iteration
phi = ones(n,1);
keff = 1.0;

% get seeded with initial power iterations
[keff,phi] = power_iter(M,F,phi,keff,2);

% construct preconditioner
[L,U] = create_precond_neut(M,F,phi,1/keff);

% set up initial guess for calculation
x = [phi;1/keff];

% steady state function evaluation (set operators)
myfun_eval = @(xx) myfun(M,F,xx);

% set up Jacobian-vector multiplication routine
myJacvecmult = @(x,y) Jacobian_vec_FD(myfun_eval,x,y);

% run static calculation
x = inexact_newton(myfun_eval,myJacvecmult,x,L,U);

end