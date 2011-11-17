function create_plots(x)

global geom

n = geom.n;

% create flux plot
figure(1)
subplot(2,2,1)
plot(x(1:n)*x(n+1))
title('Flux')
drawnow;

% create power plot
subplot(2,2,2)
plot(x(n+2:2*n+1))
title('Power [W]')
drawnow;

% create temperature plot
subplot(2,2,3)
plot(x(2*n+2:3*n+1))
title('Temperature [C]')
drawnow;

% create density plot
subplot(2,2,4)
plot(x(3*n+2:4*n+1))
title('Density [g/cc]')
drawnow;

% create absxs plot
figure(2)
subplot(2,2,1)
plot(x(4*n+2:5*n+1))
title('Absorption Cross Section [cm^{-1}]')
drawnow;

% create nfiss plot
subplot(2,2,2)
plot(x(5*n+2:6*n+1))
title('Nu-Fission Cross Section [cm^{-1}]')
drawnow;

% create diff plot
subplot(2,2,3)
plot(x(6*n+2:7*n+1))
title('Diffusion Coefficient [cm]')
drawnow;

% create kfiss plot
subplot(2,2,4)
plot(x(7*n+2:8*n+1))
title('Kappa-Fission Cross Section [cm^{-1}]')
drawnow;

end