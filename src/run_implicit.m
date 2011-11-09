% Bryan Herman
% Implicit Time stepping script
close all; clear all;

% run input file
jfnk_trans_input

% run static problem
[keig,phi] = run_static(geom,neut);

% initialize precursors
prec = init_prec(geom,neut,phi,keig);

% calculate number of time steps
Nt = info.time/info.dt;

% get x fine mesh
nxmesh = sum(geom.xgrid);

% preallocate answer vector
x = zeros(2*nxmesh,Nt);

% initial condition
x(1:nxmesh,1) = phi;
x(nxmesh+1:2*nxmesh) = prec;

% begin loop
for i = 2:Nt
    
    % build A matrix
    A = build_A_matrix(info,geom,neut,keig);
    
    % build b vector
    b = build_b_vector(info,geom,neut,x(:,i-1));
    
    % solve system
    x(:,i) = A\b;
    
    % plot solution
    figure(1)
    plot(linspace(0,1,nxmesh),x(1:nxmesh,i-1),'b',linspace(0,1,nxmesh),x(1:nxmesh,1),'r')
    figure(2)
    plot(linspace(0,1,nxmesh),x(nxmesh+1:2*nxmesh,i-1),'b',linspace(0,1,nxmesh),x(nxmesh+1:2*nxmesh,1),'r')
    drawnow;
    pause(0.01);

    if i == 100
        neut.mat(2).absxs = neut.mat(2).absxs*1.1;
    end

    if i == 200
        neut.mat(2).absxs = neut.mat(2).absxs/1.1;
    end

    
end