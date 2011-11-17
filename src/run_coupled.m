% Bryan Herman
% 2.29 Numerical Fluid Mechanics
% Steady State couple physics
clear; close all; clear -global
global geom

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
P = eye(length(geom.n));

% run no feedback system
x = JFNK_neut(myfun,mymatvecmult,x,P);