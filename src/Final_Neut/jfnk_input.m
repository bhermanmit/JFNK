% Bryan Herman
% JFNK input file
% 2.29 Numerical Fluid Mechanics

%% geometry object

% number of different coarse regions
geom.nx = 1;

% map of coarse mesh regions
geom.map = 1;

% number of fine meshes for each coarse region
geom.xgrid = 100;

% dimensions of each coarse mesh
geom.dx = 100;

%% neutronic object

% set boundary conditions
neut.alb = [0,0];


% set materials' neutronic properties
neut.mat(1).totxs = 2.27516E-02;
neut.mat(1).scatt = 0.0;
neut.mat(1).absxs = 2.27516E-02;
neut.mat(1).diff = 8.85342E-01;
neut.mat(1).nfiss = 3.13791E-02;
%{
neut.mat(1).totxs = 1.0;
neut.mat(1).scatt = 0.5;
neut.mat(1).absxs = 0.5;
neut.mat(1).diff = 0.01;
neut.mat(1).nfiss = 0.48;

neut.mat(3).totxs = 1.0;
neut.mat(3).scatt = 0.5;
neut.mat(3).absxs = 0.5;
neut.mat(3).diff = 0.01;
neut.mat(3).nfiss = 0.48;
%}