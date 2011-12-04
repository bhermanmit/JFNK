function [x_trans,pow,tave,rod] = run_coupled_trans(myfun,mycr,x_steady)

global info geom

% process steady state results into steady object
process_steady(x_steady);

% set steady state unknown vector
x = get_initial_vec();

% get timestep info
Nt = info.time/info.dt;

% get problem size
n = geom.n;

% create preconditioner
[L,U] = create_precond_trans(x(:,1));

% create vectors
cr = zeros(n,1);
pow = zeros(Nt,1);
tave = zeros(Nt,1);
rod = zeros(Nt,1);

% set initial vals
pow(1) = sum(x(2*n+1:3*n));
tave(1) = sum(x(3*n+1:4*n))/length(x(3*n+1:4*n));
rod(1) = 0;

% begin time loop
for i = 1:Nt

    % change cr
    cr = mycr(i,cr);
    
    % evaluate function at last time
    myfun_eval = @(xx) myfun(xx,x,cr);
    mymatvecmult_eval = @(x,y) Jacobian_vec_FD(myfun_eval,x,y);
    
    % iterate to get values at next time step
    x = JFNK_neut(myfun_eval,mymatvecmult_eval,x,L,U);
    
    % calculate power and average temp
    pow(i+1) = sum(x(2*n+1:3*n));
    tave(i+1) = sum(x(3*n+1:4*n))/length(x(3*n+1:4*n));
    
    % plot
    create_plots(x,pow,tave,i)
    
    % store rod info
    rod(i+1) = sum(cr);
                  
end

% set x to output
x_trans = x;

end