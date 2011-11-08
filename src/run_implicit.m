% Bryan Herman
% Implicit Time stepping script

% run input file
jfnk_trans_input

% calculate number of time steps
Nt = info.time/info.dt;

% get x fine mesh
nxmesh = sum(geom.xgrid);

% preallocate answer vector
x = zeros(2*nxmesh,Nt);

% initial condition
x(:,1) = 1;

% begin loop
for i = 2:Nt
    
    % build A matrix
    A = build_A_matrix(info,geom,neut);
    
    % build b vector
    b = build_b_vector(info,geom,neut,x(:,i-1));
    
    % solve system
    x(:,i) = A\b;
    
    % plot solution
    plot(x(1:nxmesh,i-1))
    drawnow;
    pause(0.01);
    
end