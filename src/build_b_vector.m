function b = build_b_vector(info,geom,neut,rhs)

% Explain function

% variable     meaning
% --------     -------

% get time step
dt = info.dt;

% get dimensions from object
xgrid = geom.xgrid;

% compute total number of x meshes
nxmesh = sum(xgrid);

% compute number of nonzeros
nonzeros = 2*nxmesh;

% preallocate vectors for sparse storage
b = zeros(nonzeros,1);

% begin loop over spatial and energy group indices
for i = 1:nxmesh
    
    % retrieve fine mesh to coarse mesh mapping index
    map_idx = find(i<=xgrid,1,'first');
    
    % get material id
    mat_idx = geom.map(map_idx);
    
    % retrieve cell data
    vel = neut.mat(mat_idx).vel;

    % store in vector
    b(i) = rhs(i)/(vel*dt);
        
end

% loop for precursor concentration
for i = 1:nxmesh
    
    % store rhs
    b(i+nxmesh) = rhs(i+nxmesh)/dt;
    
end

end