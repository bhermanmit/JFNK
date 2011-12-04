function x = inexact_newton(myfun,mymatvecmult,xo,L,U)

% set guess to x vector
x = xo;
dx = 0.01*ones(length(xo),1);

% begin Newton iteration
for i = 1:10000
    
    % evaluate function
    F = myfun(x);
    
    % compute residual norm
    res = norm(F);
    
    % Display residual
    fprintf('Iter: %d     Res: %d',i,res);
    
    % exit if residual is low
    if res < 1e-6
        fprintf('\n');
        break
    end
    
    % construct matrix vector multiply @ x
    mymatvecmult_x = @(y) mymatvecmult(x,y);
         
    % GMRES solution
    [dx,err] = gmres_jfnk(L,U,-F,dx,mymatvecmult_x,1000,5,1e-8,1e-10);

    % check GMRES convergence
    if find(err,1,'last') == length(err)
        error('GMRES solver did not converge')
    end
    
    % print iteration number
    fprintf('  GMRES iters: %d  GMRES res: %d\n',find(err,1,'last'),err(find(err,1,'last')));
  
    % update guess
    x = x + dx;
    
end