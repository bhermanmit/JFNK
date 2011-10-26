% Bryan Herman
% JFNK input file
% 2.29 Numerical Fluid Mechanics

% neutronic object

% set coarse dimensions
neut.nx = 1;
neut.ng = 1;

% set core layout
neut.map = [1 2];
          
% set up fine mesh and dimensions
neut.xgrid = [2,6];
neut.dx = [2,4];
 
% set materials
neut.mat(1).totxs = 1;
neut.mat(1).diff = 1;
neut.mat(1).scatt = 1;
neut.mat(1).nfiss = 1;

neut.mat(2).totxs = 1;
neut.mat(2).diff = 1;
neut.mat(2).scatt = 1;
neut.mat(2).nfiss = 1;