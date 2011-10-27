function [keignew,phinew] = power_iter(M,F,neut)


% get dimensions from object
ng = neut.ng;
xgrid = neut.xgrid;

% compute total number of x meshes
nxmesh = sum(xgrid);

% guess parameters
phi = ones(ng*nxmesh,1);
keig = 1;

for iter = 1:10000
    
    % Update Flux
    phinew = M\(1/keig*F*phi);
    
    % Update Keff
    keignew = keig*sum((F*phinew).*(F*phinew))/sum((F*phi).*(F*phinew));
    
    % Calculate Difference
    ferr = (norm(F*phinew)-norm(F*phi))/norm(F*phinew);
    kerr = abs(keignew-keig)/keignew;
    
    fprintf('Iteration: %d   k-error: %d  flux-error: %d\n',iter,kerr,ferr);
    
    % Check Convergence
    if ferr < 1.0e-8 && kerr < 1.0e-8
        disp('Converged')
        break
    else
        phi = phinew;
        keig = keignew;
    end
    
end