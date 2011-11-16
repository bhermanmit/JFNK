% Bryan Herman
% run JFNK script for neutronics
clear; close all;
global M F

% get inputs
jfnk_input

% build loss matrix
M = build_loss_matrix(geom,neut);

% build production matrix
F = build_prod_matrix(geom,neut);

% guess initial keff and phi
keff = 1.0;
phi = ones(size(M,1),1);
phi = phi/norm(phi);

% solve for eigenvalue and eigenvector by power iteration
disp('Power Iteration')
tic
[keff_pow,phi_pow] = power_iter(M,F,phi,keff);
toc

% solve for eigenvalue and eigenvector by Newton-GMRES
disp('Newton-GMRES')
tic
[keff_gm,phi_gm] = NewtonKrylov_neut(M,F,phi,keff);
toc

% solve for eigenvalue and eigenvector by JFNK
disp('JFNK')
tic
[keff_jfnk,phi_jfnk] = run_jfnk(phi,keff);
toc

% normalize answers
phi_pow = phi_pow/trapz(phi_pow);
phi_gm = phi_gm/trapz(phi_gm);
phi_jfnk = phi_jfnk/trapz(phi_jfnk);

% plot eigenvectors
plot(phi_pow,'b');
plot(phi_gm,'r');
plot(phi_jfnk,'g');