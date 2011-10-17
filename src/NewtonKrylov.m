function [x,res,i] = NewtonKrylov(Ffun,Jfun,x,maxiters)

% guess initial dx
dx = ones(length(x),1);

% Begin Newton Iterations
for i = 1:maxiters
    
        % evaluate funcitons, F
        F = Ffun(x);
        
        % compute residual norm
        res = norm(F);
        
        % check convergence
        if res < 1e-6
            break
        end
        
        % evaluate Jacobian, J
        J = Jfun(x);
        
        % calculate forcing factor
        eta = min(1/(i+2),norm(F));
        
        % solve system of equations
        P = eye(size(F,1));  % no preconditioning
        [dx,err] = gmres_restart_givens_prec(P,J,dx,-F,10,1,eta*norm(F));
        
        % get new x
        x = x + dx;
        
end

end