function build_loss_matrix(neut)

% Explain function

% variable     meaning
% --------     -------

% get dimensions from object
nx = neut.nx;
ng = neut.ng;
map = neut.map;
xgrid = neut.xgrid;
dx = neut.dx;

% compute total number of x meshes
nxmesh = sum(xgrid);

% begin loop over spatial and energy group indices
for i = 1:nxmesh
    
    for g = 1:ng
        
        % call matrix index function to get row number
        row_idx = get_mat_indx(g,i,nxmesh);
        
        % retrieve fine mesh to coarse mesh mapping index
        map_idx = find(i<=xgrid,1,'first');
        
    end
    
end

