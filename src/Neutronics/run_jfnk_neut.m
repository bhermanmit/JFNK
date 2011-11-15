% Bryan Herman
% run JFNK script for neutronics

% get inputs
jfnk_input

% build loss matrix
M = build_loss_matrix(neut);

% build production matrix
F = build_prod_matrix(neut);

% guess initial keff and phi
keff = 1.0;
phi = ones(size(M,1),1);

% solve for eigenvalue and eigenvector by power iteration
disp('Power Iteration')
tic
[keff_pow,phi_pow] = power_iter(M,F,neut);
toc

% solve for eigenvalue and eigenvector by Newton-GMRES
disp('Newton-GMRES')
tic
[keff_gm,phi_gm] = NewtonKrylov_neut(M,F,phi,keff);
toc