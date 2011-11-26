function x = run_transient(x,myfun,mymatvecmult)

global info geom

% get timestep info
Nt = info.time/info.dt;

% get problem size
n = geom.n;

% set option
opt = 'no';

% create preconditioner
[L,U] = create_precond_trans(x(:,1));

% create cr vec
cr = zeros(n,1);

% begin time loop
for i = 1:Nt
       
    % put CR in
    if i >= 20
        if mod(i,5) == 0
            if cr(1) == 0
                cr(1:2) = 1;
            else
                cr(find(cr,1,'last')+1:find(cr,1,'last')+2) = 1;
            end
        end
    end
    
    % evaluate function at last time
    myfun_eval = @(xx) myfun(xx,x(:,i),cr);
    mymatvecmult_eval = @(x,y) mymatvecmult(myfun_eval,x,y);
    
    % set guess as prev time step
    x(:,i+1) = x(:,i);
      
    % iterate to get values at next time step
    x(:,i+1) = JFNK_neut_trans(myfun_eval,mymatvecmult_eval,x(:,i+1),L,U);
    
    % eval flux at next time step
    % x(:,i+1) = eval_time_step(x(:,i),opt);
    
    % plot power
    figure(3)
    plot(x(2*n+1:3*n,1),'b');
    hold on
    plot(x(2*n+1:3*n,i+1),'r');
    title(horzcat('tstep = ',num2str(i)));
    drawnow;
    pause(0.01);
    hold off
        
end

end