% Bryan Herman
% JFNK input file
% 2.29 Numerical Fluid Mechanics

%% Control Information

% maximum time
info.time = 100;

% time step
info.dt = 0.1;

%% geometry object

% number of different coarse regions
geom.nx = 1;

% map of coarse mesh regions
geom.map = 1;

% number of fine meshes for each coarse region
geom.xgrid = 10;

% dimensions of each coarse mesh
geom.dx = 200;

%% neutronic object

% set boundary conditions
neut.alb = [1,1];

% set fraction of delayed neutrons
neut.beta = 0.0065;

% set decay constant for precursor group
neut.lamb = 0.0347;
 
% set materials' neutronic properties
neut.mat(1).absxs = 0.5;
neut.mat(1).diff = 0.3;
neut.mat(1).nfiss = 0.48;
neut.mat(1).vel = 6*10^6;