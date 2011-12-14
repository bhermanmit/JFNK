function create_plots(x,pow,tave,i)

global geom info

if mod(i-1,10) == 0
    
% get needed constants from objects
n = geom.n;
dt = info.dt;
Nt = info.time/dt;

% create power plot
figure(1)
subplot(2,2,1)
plot(x(2*n+1:3*n),1:n)
title('Power')
ylabel('Slab Length [cm]')
xlabel('Power [W]')
drawnow;

% create density plot
subplot(2,2,2)
plot(x(4*n+1:5*n),1:n)
title('Density')
ylabel('Slab Length [cm]')
xlabel('Density [g/cc]')
drawnow;

% create power plot
subplot(2,2,3)
plot((0:Nt-1)*dt,pow)
title('Reactor Power')
xlabel('Time [s]')
ylabel('Power [W]')
axis([0 100 5.2e4 7e4])
drawnow;

% create tave plot
subplot(2,2,4)
plot((0:Nt-1)*dt,tave)
title('Average Temperature')
xlabel('Time [s]')
ylabel('Temperature [C]')
axis([0 100 304 316])
drawnow;

matlab2tikz(horzcat('./anim/rod_trans_',num2str(i),'.tikz'))

end


%{
% create average plots
figure(2)
subplot(1,2,1)
plot(pow)
title('Reactor Power')
xlabel('Time [step]')
ylabel('Power [W]')
drawnow;
subplot(1,2,2)
plot(tave)
title('Average Temperature')
xlabel('Time [step]')
ylabel('Temperature [C]')
drawnow;

% create snapshot plots
if i == 400
    figure(4)
    plot(geom.dx*(1:n)',x(1:n))
    drawnow;
    figure(5)
    plot(geom.dx*(1:n)',x(4*n+1:5*n))
    drawnow;
end

end
%}