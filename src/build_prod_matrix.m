function F = build_prod_matrix(neut)

% Explain function

% variable     meaning
% --------     -------

% get dimensions from object
ng = neut.ng;
xgrid = neut.xgrid;

% energy transfer function
energy_trans = @(h,g) g + ng*(h - 1);

% matrix indexing function
get_mat_indx = @(g,i) g + ng*(i-1);

% compute total number of x meshes
nxmesh = sum(xgrid);

% compute number of nonzeros
nonzeros = ng*nxmesh;

% preallocate vectors for sparse storage
rowvec = zeros(nonzeros,1);
colvec = zeros(nonzeros,1);
valvec = zeros(nonzeros,1);

% set counter
kount = 1;

% begin loop over spatial and energy group indices
for i = 1:nxmesh
    
    for g = 1:ng
        
        % place energy transfer fission cross sections in matrix
        for h = 1:ng
            
            % call matrix index function to get row number
            row_idx = get_mat_indx(g,i);
            
            % call matrix index function to get col number
            col_idx = get_mat_indx(h,i);
            
            % retrieve fine mesh to coarse mesh mapping index
            map_idx = find(i<=xgrid,1,'first');
            
            % get material id
            mat_idx = neut.map(map_idx);
            
            % compute energy transfer index
            ene_idx = energy_trans(h,g);
            
            % get scattering cross section
            nfisshg = neut.mat(mat_idx).nfiss(ene_idx);
            
            % set value in vectors
            rowvec(kount) = row_idx;
            colvec(kount) = col_idx;
            valvec(kount) = nfisshg;
            kount = kount+1;
            
        end           
    
    end

end

% create sparse matrix
F = sparse(rowvec,colvec,valvec);

