% Bryan Herman
% JFNK input file
% 2.29 Numerical Fluid Mechanics

global geom neut

%% geometry object

% number of mesh cells
geom.n = 370;

% dimension of mesh [cm]
geom.dx = 1;

%% neutronic object

% set boundary conditions
neut.alb = [0,0];
 
% set reference neutronic parameters
neut.absxs = 2.27516E-02;
neut.nfiss = 3.13791E-02;
neut.diff = 8.85342E-01;