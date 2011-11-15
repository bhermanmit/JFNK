function prec = init_prec(geom,neut,phi,keig)

% Explain function

% variable     meaning
% --------     -------


% get dimensions from object
xgrid = geom.xgrid;

% get global neutronic information
beta = neut.beta;
lamb = neut.lamb;

% compute total number of x meshes
nxmesh = sum(xgrid);

% compute number of nonzeros
nonzeros = nxmesh;

% allocate precursor
prec = zeros(nonzeros,1);

% cumulative sum of nxmesh
xgrid = cumsum(xgrid);

% begin loop over spatial and energy group indices
for i = 1:nxmesh
    
    % retrieve fine mesh to coarse mesh mapping index
    map_idx = find(i<=xgrid,1,'first');
    
    % get material id
    mat_idx = geom.map(map_idx);
    
    % retrieve cell data
    nfiss = neut.mat(mat_idx).nfiss;

    % compute precursor concentration
    prec(i) = (beta*nfiss*phi(i))/(keig*lamb);
    
end

end
