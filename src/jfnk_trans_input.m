% Bryan Herman
% JFNK input file
% 2.29 Numerical Fluid Mechanics

%% Control Information

% maximum time
info.time = 1000;

% time step
info.dt = 0.1;

%% geometry object

% number of different coarse regions
geom.nx = 3;

% map of coarse mesh regions
geom.map = [1,2,1,3,1];

% number of fine meshes for each coarse region
geom.xgrid = [20 5 50 5 20];

% dimensions of each coarse mesh
geom.dx = [4 1 10 1 4];

%% neutronic object

% set boundary conditions
neut.alb = [0,0];

% set fraction of delayed neutrons
neut.beta = 0.0065;

% set decay constant for precursor group
neut.lamb = 0.0347;
 
% set materials' neutronic properties
neut.mat(1).totxs = 1.0;
neut.mat(1).scatt = 0.5;
neut.mat(1).absxs = 0.5;
neut.mat(1).diff = 0.01;
neut.mat(1).nfiss = 0.48;
neut.mat(1).vel = 6*10^6;

neut.mat(2).totxs = 1.0;
neut.mat(2).scatt = 0.5;
neut.mat(2).absxs = 0.5;
neut.mat(2).diff = 0.01;
neut.mat(2).nfiss = 0.48;
neut.mat(2).vel = 6*10^6;

neut.mat(3).totxs = 1.0;
neut.mat(3).scatt = 0.5;
neut.mat(3).absxs = 0.5;
neut.mat(3).diff = 0.01;
neut.mat(3).nfiss = 0.48;
neut.mat(3).vel = 6*10^6;