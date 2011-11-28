function create_plots(x)

global geom

% get needed constants from objects
n = geom.n;

% create power plot
figure(1)
subplot(2,2,1)
plot(x(2*n+1:3*n))
title('Power')
xlabel('Slab Length [cm]')
ylabel('Power [W]')
drawnow;

% create temperature plot
subplot(2,2,2)
plot(x(3*n+1:4*n))
title('Temperature')
xlabel('Slab Length [cm]')
ylabel('Temperature [C]')
drawnow;

% create density plot
subplot(2,2,3)
plot(x(4*n+1:5*n))
title('Density')
xlabel('Slab Length [cm]')
ylabel('Density [g/cc]')
drawnow;

% create absorption plot
subplot(2,2,4)
plot(x(5*n+1:6*n))
title('Absorption')
xlabel('Slab Length [cm]')
ylabel('Absorption [cm^{-1}]')
drawnow;

end