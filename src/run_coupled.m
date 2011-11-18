% Bryan Herman
% 2.29 Numerical Fluid Mechanics
% Steady State couple physics
clear; close all; clear -global

% function for residual evaluation
myfun = @jfnk_steady_state_fun;

% function jacobian vector approximation
mymatvecmult = @(x,y) matvecmult(myfun,x,y);
%mymatvecmult = @JacobianVectMult;

% run input file
jfnk_input

% get initial guess
x = get_initial_guess();

% build preconditioner
[L,U] = create_precond(x);

% run no feedback system
x = JFNK_neut(myfun,mymatvecmult,x,L,U);