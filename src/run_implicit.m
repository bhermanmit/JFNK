% Bryan Herman
% Implicit Time stepping script

% run input file
jfnk_trans_input

% run static problem
[keig,phi] = run_static(geom,neut);

% calculate number of time steps
Nt = info.time/info.dt;

% get x fine mesh
nxmesh = sum(geom.xgrid);

% preallocate answer vector
x = zeros(2*nxmesh,Nt);

% initial condition
x(:,1) = 1;
x(1:nxmesh,1) = phi;

% begin loop
for i = 2:Nt
    
    % build A matrix
    A = build_A_matrix(info,geom,neut,keig);
    
    % build b vector
    b = build_b_vector(info,geom,neut,x(:,i-1));
    
    % solve system
    x(:,i) = A\b;
    
    % plot solution
    plot(x(1:nxmesh,i-1))
    drawnow;
    
end