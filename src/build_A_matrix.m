function A = build_A_matrix(info,geom,neut,keig)

% Explain function

% variable     meaning
% --------     -------

% get time step
dt = info.dt;

% get dimensions from object
xgrid = geom.xgrid;

% get boundary conditions
alb = neut.alb;

% get global neutronic information
beta = neut.beta;
lamb = neut.lamb;

% compute total number of x meshes
nxmesh = sum(xgrid);

% compute number of nonzeros
nonzeros = nxmesh+2*(nxmesh-1)+2*nxmesh;

% preallocate vectors for sparse storage
rowvec = zeros(nonzeros,1);
colvec = zeros(nonzeros,1);
valvec = zeros(nonzeros,1);

% set counter
kount = 1;

% begin loop over spatial and energy group indices
for i = 1:nxmesh
    
    % call matrix index function to get row number
    row_idx = i;
    
    % retrieve fine mesh to coarse mesh mapping index
    map_idx = find(i<=xgrid,1,'first');
    
    % get material id
    mat_idx = geom.map(map_idx);
    
    % retrieve cell data
    absxs = neut.mat(mat_idx).absxs;
    diff = neut.mat(mat_idx).diff;
    nfiss = neut.mat(mat_idx).nfiss;
    vel = neut.mat(mat_idx).vel;
    dx = geom.dx(map_idx)/geom.xgrid(map_idx); % fine mesh dx not coarse
    
    % Do cell to the left (check for boundary)
    if i == 1
        
        % compute effective diffusion coefficient to boundary
        diff_L = (2*diff*(1-alb(1)))/(4*diff*(1+alb(1)) + (1-alb(1))*dx);
        
    else
        
        % get column location
        col_idx = i-1;
        
        % retrieve fine mesh to coarse mesh mapping index
        map_idx = find(i-1<=xgrid,1,'first');
        
        % get material id
        mat_idx = geom.map(map_idx);
        
        % get diff coeff and dimension (watch fine mesh dx)
        diff_n = neut.mat(mat_idx).diff;
        dx_n = geom.dx(map_idx)/geom.xgrid(map_idx);
        
        % compute effective diffusion coefficient to neighbor
        diff_L = (2*diff*diff_n)/(dx_n*diff + dx*diff_n);
        
        % set value in vectors
        rowvec(kount) = row_idx;
        colvec(kount) = col_idx;
        valvec(kount) = -diff_L/dx;
        kount = kount + 1;
        
    end
    
    % Do cell to the right (check for boundary)
    if i == nxmesh
        
        % compute effective diffusion coefficient to boundary
        diff_R = (2*diff*(1-alb(2)))/(4*diff*(1+alb(2)) + (1-alb(2))*dx);
        
    else
        
        % get column location
        col_idx = i+1;
        
        % retrieve fine mesh to coarse mesh mapping index
        map_idx = find(i+1<=xgrid,1,'first');
        
        % get material id
        mat_idx = geom.map(map_idx);
        
        % get diff coeff and dimension
        diff_n = neut.mat(mat_idx).diff;
        dx_n = geom.dx(map_idx)/geom.xgrid(map_idx);
        
        % compute effective diffusion coefficient to neighbor
        diff_R = (2*diff*diff_n)/(dx_n*diff + dx*diff_n);
        
        
        % set value in vectors
        rowvec(kount) = row_idx;
        colvec(kount) = col_idx;
        valvec(kount) = -diff_R/dx;
        kount = kount + 1;
        
    end
    
    % set diagonal term
    rowvec(kount) = row_idx;
    colvec(kount) = row_idx;
    valvec(kount) = 1/(vel*dt) + (diff_R + diff_L)/dx + absxs - (1-beta)*nfiss/keig;
    kount = kount + 1;
    
    % place precursor information in matrix
    rowvec(kount) = row_idx;
    colvec(kount) = nxmesh + row_idx;
    valvec(kount) = -lamb;
    kount = kount + 1;
  
end

% loop for precursor concentration
for i = 1:nxmesh
        
    % retrieve fine mesh to coarse mesh mapping index
    map_idx = find(i<=xgrid,1,'first');
    
    % get material id
    mat_idx = geom.map(map_idx);
    
    % retrieve cell data
    nfiss = neut.mat(mat_idx).nfiss;
    
    % store flux coefficient
    rowvec(kount) = i + nxmesh;
    colvec(kount) = i;
    valvec(kount) = -beta*nfiss/keig;
    kount = kount + 1;
    
    % store precursor coefficient
    rowvec(kount) = i + nxmesh;
    colvec(kount) = i + nxmesh;
    valvec(kount) = 1/dt + lamb;
    kount = kount + 1;
    
end

% create sparse matrix
A = sparse(rowvec,colvec,valvec);

end