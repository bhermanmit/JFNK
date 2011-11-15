% Bryan Herman
% JFNK input file
% 2.29 Numerical Fluid Mechanics

%% geometry object

% number of mesh cells
geom.n = 10;

% dimension of mesh [cm]
geom.dx = 1;


%% thermal hydraulic object

% Inlet Temperature [C]
th.Tin = 293.1;

% Mass Flow Rate in Subchannel [kg/s]
th.w = 0.335;

% Average power per subchannel [W]
th.Qr = 3411e6/(193*264);

% Reference coolant density [g/cc] @ 155 bar and 310 C
th.rhoREF = 0.705;

% System pressure [bar]
th.P = 155;

%% neutronic object

% set boundary conditions
neut.alb = [0,0];
 
% set reference neutronic parameters
neut.absxsREF = 2.27516E-02;
neut.nfissREF = 3.13791E-02;
neut.diffREF = 8.85342E-01;
neut.kfissREF = 4.13494E-13;

% dependence of neutronic parameters on density
neut.DabsxsDrho = 0.020796;
neut.DnfissDrho   = 0.035471;
neut.DdiffDrho  = -0.95551;
neut.DkfissDrho   = 4.7055E-13;

% set evaluation of neutronic parameters as a function of density
neut.absxs = @(rho) neut.absxsREF + neut.DabsxsDrho*(rho - th.rhoREF);
neut.nfiss = @(rho) neut.nfissREF + neut.DnfissDrho*(rho - th.rhoREF);
neut.diff = @(rho) neut.diffREF + neut.DdiffDrho*(rho - th.rhoREF);
neut.kfiss = @(rho) neut.kfissREF + neut.DkfissDrho*(rho - th.rhoREF);