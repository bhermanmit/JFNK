function M = build_loss_matrix(geom,neut)

% Explain function

% variable     meaning
% --------     -------

% get dimensions from object
ng = 1;
xgrid = geom.xgrid;

% get boundary conditions
alb = neut.alb;

% energy transfer function
energy_trans = @(h,g) g + ng*(h - 1);

% matrix indexing function
get_mat_indx = @(g,i) g + ng*(i-1);

% compute total number of x meshes
nxmesh = sum(xgrid);

% change xgrid to cumulative 
xgrid = cumsum(xgrid);

% compute number of nonzeros
nonzeros = ng*(nxmesh+2*(nxmesh-1))+(ng^2-ng)*nxmesh;

% preallocate vectors for sparse storage
rowvec = zeros(nonzeros,1);
colvec = zeros(nonzeros,1);
valvec = zeros(nonzeros,1);

% set counter
kount = 1;

% begin loop over spatial and energy group indices
for i = 1:nxmesh
    
    for g = 1:ng
        
        % call matrix index function to get row number
        row_idx = get_mat_indx(g,i);
        
        % retrieve fine mesh to coarse mesh mapping index
        map_idx = find(i<=xgrid,1,'first');
        
        % get material id
        mat_idx = geom.map(map_idx);
        
        % retrieve energy transfer index
        ene_idx = energy_trans(g,g);
        
        % retrieve cell data
        totxs = neut.mat(mat_idx).totxs(g);
        scattgg = neut.mat(mat_idx).scatt(ene_idx);
        diff = neut.mat(mat_idx).diff(g);
        dx = geom.dx(map_idx)/geom.xgrid(map_idx); % fine mesh dx not coarse
        
        % Do cell to the left (check for boundary)      
        if i == 1
            
            % compute effective diffusion coefficient to boundary
            diff_L = (2*diff*(1-alb(1)))/(4*diff*(1+alb(1)) + (1-alb(1))*dx);
            
        else
            
            % get column location
            col_idx = get_mat_indx(g,i-1);
            
            % retrieve fine mesh to coarse mesh mapping index
            map_idx = find(i-1<=xgrid,1,'first');
            
            % get material id
            mat_idx = geom.map(map_idx);
            
            % get diff coeff and dimension (watch fine mesh dx)
            diff_n = neut.mat(mat_idx).diff(g);
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
            col_idx = get_mat_indx(g,i+1);
            
            % retrieve fine mesh to coarse mesh mapping index
            map_idx = find(i+1<=xgrid,1,'first');
            
            % get material id
            mat_idx = geom.map(map_idx);
            
            i
            diff_n = neut.mat(mat_idx).diff(g);
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
        valvec(kount) = (diff_R + diff_L)/dx + totxs - scattgg;
        kount = kount + 1;
        
        % place energy transfer scattering cross sections in matrix
        for h = 1:ng
            
            % cycle if h is g, already put in diagonal
            if h == g
                continue
            end
            
            % call matrix index function to get col number
            col_idx = get_mat_indx(h,i);
            
            % retrieve fine mesh to coarse mesh mapping index
            map_idx = find(i<=xgrid,1,'first');
            
            % get material id
            mat_idx = geom.map(map_idx);
            
            % compute energy transfer index
            ene_idx = energy_trans(h,g);
            
            % get scattering cross section
            scatthg = neut.mat(mat_idx).scatt(ene_idx);
            
            % set value in vectors
            rowvec(kount) = row_idx;
            colvec(kount) = col_idx;
            valvec(kount) = -scatthg;
            kount = kount+1;
            
        end           
    
    end

end

% create sparse matrix
M = sparse(rowvec,colvec,valvec);

