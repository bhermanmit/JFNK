% Bryan Herman
% Implicit Time stepping script
% close all; clear all;
global M F

% transient function
f1 = @(tt) -0.000012346*tt.^2 + 0.002469136*tt + 0.976543210;
f5 = @(tt) -0.000493827*tt.^2 + 0.098765432*tt + 0.061728395;

% run input file
jfnk_trans_input

% build loss matrix
M = build_loss_matrix(geom,neut);

% build production matrix
F = build_prod_matrix(geom,neut);

% run jfnk for static calculation
phi = ones(size(M,1),1);
keff = 1;
[keff,phi] = run_jfnk(phi,keff);

% normalize phi
phi = phi/trapz(phi);

% initialize precursors
prec = init_prec(geom,neut,phi,keff);

% calculate number of time steps
Nt = info.time/info.dt;

% get x fine mesh
nxmesh = sum(geom.xgrid);

% preallocate answer vector
x = zeros(2*nxmesh,Nt);

% initial condition
x(1:nxmesh,1) = phi;
x(nxmesh+1:2*nxmesh) = prec;

% unrodded xs
urodxs2 = neut.mat(2).absxs;
urodxs3 = neut.mat(3).absxs;

% begin loop
for i = 2:Nt
    
    % build A matrix
    A = build_A_matrix(info,geom,neut,keff);
    
    % build b vector
    b = build_b_vector(info,geom,neut,x(:,i-1));
    
    % compute preconditioner
    P = lu(A);
    
    % GMRES solution
    [dx,err] = gmres_restart_givens_prec(P,A,x(:,i-1),b,100,1,1e-7);
    
    % solve system
    x(:,i) = A\b;
    
    % plot solution
    figure(1)
    plot(linspace(0,1,nxmesh),x(1:nxmesh,i-1),'b',linspace(0,1,nxmesh),x(1:nxmesh,1),'r')
    % plot(linspace(0,1,nxmesh),x(1:nxmesh,i-1))
    drawnow;
    pause(0.06);
    
    % adjust cross section
    if (i >= 9) && (i <= 189)
        neut.mat(2).absxs = urodxs2*f1(i+1);
        neut.mat(3).absxs = urodxs3*f5(i+1);
    else
        neut.mat(2).absxs = urodxs2;
        neut.mat(3).absxs = urodxs3;
    end

end