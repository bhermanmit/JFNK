function x = JFNK_neut(myfun,mymatvecmult,xo,P)

% set guess to x vector
x = xo;
dx = 0.01*ones(length(x),1);

% begin Newton iteration
for i = 1:10000
    
    % evaluate function
    F = myfun(x);
    
    % compute residual norm
    res = norm(F);
    
    % exit if residual is low
    if res < 1e-6
        break
    end
    
    % Display residual
    fprintf('Iter: %d     Res: %d\n',i,res);
    
    % construct matrix vector multiply @ x
    mymatvecmult_x = @(y) mymatvecmult(x,y);

    % GMRES solution
    [dx,err] = gmres_jfnk(P,-F,dx,mymatvecmult_x,100,1,1e-7);
    
    % update guess
    x = x + dx;
    
end