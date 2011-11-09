function [keig,phi] = run_static(geom,neut)

% build loss matrix
M = build_loss_matrix(geom,neut);

% build production matrix
F = build_prod_matrix(geom,neut);

% run power iteration
[keig,phi] = power_iter(M,F,geom);

end