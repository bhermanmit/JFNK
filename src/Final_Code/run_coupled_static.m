function x = run_coupled_static(myfun)

% get initial guess
x = get_initial_guess();

% build preconditioner
[L,U] = create_precond_steady(x);

% set up Jacobian-vector multiplication routine
myJacvecmult = @(x,y) Jacobian_vec_FD(myfun,x,y);

% run steady state
x = inexact_newton(myfun,myJacvecmult,x,L,U);

end