% Bryan Herman
% 2.29 Numerical Fluid Mechanics
% Steady State couple physics
clear; close all; clear -global

profile on -timer cpu
% tic
% function for residual evaluation
myfun = @jfnk_steady_state_fun;

% function jacobian vector approximation
mymatvecmult = @(x,y) matvecmult(myfun,x,y);

% run input file
jfnk_input_trans

% get initial guess
x = get_initial_guess();

% build preconditioner
[L,U] = create_precond(x);

% run steady state
x = JFNK_neut(myfun,mymatvecmult,x,L,U);

% process steady state results into steady object
process_steady(x);

% set steady state unknown vector
x = get_initial_vec();

% run transient
myfun = @jfnk_trans_fun;
mymatvecmult = @(myfun,x,y) matvecmult(myfun,x,y);
[x,pow,tave,rod] = run_transient(x,myfun,mymatvecmult);

% toc
profile viewer
profile off
% profsave(profile('info'),'prof_results')