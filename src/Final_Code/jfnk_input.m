% Bryan Herman
% JFNK input file
% 2.29 Numerical Fluid Mechanics

global info geom th neut

%% Control Information

% maximum time
info.time = 150.0;

% time step
info.dt = 0.1;

%% geometry object

% number of mesh cells
geom.n = 600;

% dimension of mesh [cm]
geom.dx = 1;

%% thermal hydraulic object

% Inlet Temperature [C]
th.Tin = 293.1;

% Mass Flow Rate in Subchannel [kg/s]
th.w = 0.335;

% Interior Subchannel flow area [cm^2]
th.area = 0.879e-5;

% Average power per subchannel [W]
th.Qr = 3411e6/(193*264);

% Average temperature [C]
th.Tref = 310; 

% System pressure [bar]
th.P = 155;

% Reference coolant density [g/cc] @ 155 bar and 310 C
th.rhoREF = XSteam('rho_pT',th.P,th.Tref)/1000;

% Specific heat
th.cp = XSteam('cp_pT',th.P,th.Tref)*1000;

% Slope
th.DrhoDtemp = -0.0023393;

%% neutronic object

% set boundary conditions
neut.alb = [0,0];

% set delayed neutron information
neut.beta = 0.00682;
neut.lambd = 0.815922;
neut.vel = 3.2047e+006;

% set reference neutronic parameters
neut.absxsREF = 2.27516E-02;
neut.nfissREF = 3.13791E-02;
neut.diffREF = 8.85342E-01;
neut.kfissconst = 1e12;
neut.kfissREF = 4.13494E-13*neut.kfissconst;

% dependence of neutronic parameters on density
neut.skew = 1;
neut.DabsxsDrho = 0.020796*neut.skew;
neut.DnfissDrho = 0.035471*neut.skew;
neut.DdiffDrho  = -0.95551*neut.skew;
neut.DkfissDrho = 4.7055E-13*neut.kfissconst*neut.skew;