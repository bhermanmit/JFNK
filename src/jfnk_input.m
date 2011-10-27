% Bryan Herman
% JFNK input file
% 2.29 Numerical Fluid Mechanics

% neutronic object

% set coarse dimensions
neut.nx = 1;
neut.ng = 1;

% set core layout
neut.map = [1];
          
% set up fine mesh and dimensions
neut.xgrid = [10];
neut.dx = [200];

% set boundary conditions
neut.alb = [0,0];
 
% set materials
neut.mat(1).totxs = 1.0;
neut.mat(1).diff = 0.3;
neut.mat(1).scatt = 0.5;
neut.mat(1).nfiss = 0.48;