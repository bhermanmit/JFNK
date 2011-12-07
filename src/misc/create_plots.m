function create_plots(x)

global geom neut

% get needed constants from objects
n = geom.n;
kfissconst = neut.kfissconst;

% create flux plot
figure(1)
subplot(2,2,1)
plot(x(1:n)*x(n+1)*kfissconst)
title('Flux')
xlabel('Slab Length [cm]')
ylabel('Flux [neutrons/cm^{2}-s]')
drawnow;

% create power plot
subplot(2,2,2)
plot(x(n+2:2*n+1))
title('Power')
xlabel('Slab Length [cm]')
ylabel('Power [W]')
drawnow;

% create temperature plot
subplot(2,2,3)
plot(x(2*n+2:3*n+1))
title('Temperature')
xlabel('Slab Length [cm]')
ylabel('Temperature [C]')
drawnow;

% create density plot
subplot(2,2,4)
plot(x(3*n+2:4*n+1))
title('Density')
xlabel('Slab Length [cm]')
ylabel('Density [g/cc]')
drawnow;

% create absxs plot
figure(2)
subplot(2,2,1)
plot(x(4*n+2:5*n+1))
title('Absorption Cross Section')
xlabel('Slab Length [cm]')
ylabel('Absorption Cross Section [cm^{-1}]')
drawnow;

% create nfiss plot
subplot(2,2,2)
plot(x(5*n+2:6*n+1))
title('Nu-Fission Cross Section')
xlabel('Slab Length [cm]')
ylabel('Nu-Fission Cross Section [cm^{-1}]')
drawnow;

% create diff plot
subplot(2,2,3)
plot(x(6*n+2:7*n+1))
title('Diffusion Coefficient')
xlabel('Slab Length [cm]')
ylabel('Diffusion Coefficient [cm]')
drawnow;

% create kfiss plot
subplot(2,2,4)
plot(x(7*n+2:8*n+1)/kfissconst)
title('Kappa-Fission Cross Section')
xlabel('Slab Length [cm]')
ylabel('Kappa-Fission Cross Section [cm^{-1}]')
drawnow;

end