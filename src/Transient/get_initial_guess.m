function x = get_initial_guess()

global geom neut th

% get problem size
n = geom.n;
dx = geom.dx;

% get constants from object
Qr = th.Qr; % reactor power
P = th.P; % pressure of system
Tin = th.Tin; % inlet temperature
w = th.w;
cp = th.cp;
absxsREF = neut.absxsREF;
nfissREF = neut.nfissREF;
diffREF = neut.diffREF;
kfissREF = neut.kfissREF;
DabsxsDrho = neut.DabsxsDrho;
DnfissDrho = neut.DnfissDrho;
DdiffDrho = neut.DdiffDrho;
DkfissDrho = neut.DkfissDrho;
rhoREF = th.rhoREF;

% form neutronics guess
x = ones(8*n+2,1);
x(1:n) = x(1:n)/norm(x(1:n));
x(4*n+2:5*n+1) = absxsREF*ones(n,1);
x(5*n+2:6*n+1) = nfissREF*ones(n,1);
x(6*n+2:7*n+1) = diffREF*ones(n,1);

% evaluate neutronic operators
M = create_operators('M',x);
F = create_operators('F',x);

% perform one power iteration
[keff,x(1:n)] = power_iter(M,F,x(1:n),1/x(8*n+2),20);
x(8*n+2) = 1/keff;

% renormalize phi
x(1:n) = x(1:n)/norm(x(1:n));

% compute normalization parameter
x(n+1) = Qr/(dx*(kfissREF*ones(n,1))'*x(1:n));

% compute individual energy deposition
x(n+2:2*n+1) = x(n+1)*kfissREF*dx*x(1:n);

% compute temperature and density distribution
for i = 1:n
    
    % calculate temperature (watch initial condition)
    if i == 1
        x(2*n+2) = Tin + x(n+2)/(2*w*cp);
    else
        x(2*n+1+i) = x(2*n+1+(i-1)) + (x(n+1+i) + x(n+1+(i-1)))/(2*w*cp);
    end
    
    % calculate density at pressure and computed temperature
    x(3*n+1+i) = XSteam('rho_pT',P,x(2*n+1+i))/1000;
    
end

% compute new cross sections
x(4*n+2:5*n+1) = absxsREF + DabsxsDrho*(x(3*n+2:4*n+1) - rhoREF);
x(5*n+2:6*n+1) = nfissREF + DnfissDrho*(x(3*n+2:4*n+1) - rhoREF);
x(6*n+2:7*n+1) = diffREF + DdiffDrho*(x(3*n+2:4*n+1) - rhoREF);
x(7*n+2:8*n+1) = kfissREF + DkfissDrho*(x(3*n+2:4*n+1) - rhoREF);

end