function Jy = JacobianVectMult(x,y)

global geom neut th M F E S R

% create MD operator
MD = create_operators('MD',x);

% get problem size
n = geom.n;
dx = geom.dx;

% allocate function
Jy = zeros(8*n+2,1);

% get perturbation parameter for density
b = 1e-8;
N = length(y(2*n+2:3*n+1));
epsilon = b*sum(x(2*n+2:3*n+1))/(N*norm(y(2*n+2:3*n+1)));

% get constants from object
P = th.P; % pressure of system
DabsxsDrho = neut.DabsxsDrho;
DnfissDrho = neut.DnfissDrho;
DdiffDrho = neut.DdiffDrho;
DkfissDrho = neut.DkfissDrho;

% extract vectors from x
phi = x(1:n);                   % fluxes
c_tilde = x(n+1);               % normalization constant
Q = x(n+2:2*n+1);               % power in cell
T = x(2*n+2:3*n+1);             % cell average temperature
rho = x(3*n+2:4*n+1);           % cell average density
absxs = x(4*n+2:5*n+1);         % absorption macro xs
nfiss = x(5*n+2:6*n+1);         % nu-fission macro xs
diff = x(6*n+2:7*n+1);          % diffusion coefficient
kfiss = x(7*n+2:8*n+1);         % kappa-fission macro xs
lamb = x(8*n+2);                % eigenvalue
% kfissREF = neut.kfissREF*ones(n,1);

% phi equation
Jy(1:n) = (M - lamb*F)*y(1:n) + ...
    diag(phi)*y(4*n+2:5*n+1) + ...
    (-lamb*diag(phi))*y(5*n+2:6*n+1) + ...
    MD*y(6*n+2:7*n+1) + ...
    (-F*phi)*y(8*n+2);

% Jy(1:n) = (M - lamb*F)*y(1:n) + (-F*phi)*y(8*n+2);

% flux-power normalization
Jy(n+1) = -c_tilde*dx*(kfiss')*y(1:n) + ...
    (-dx*(kfiss')*phi)*y(n+1); %   + ...
    (-c_tilde*dx)*(phi')*y(7*n+2:8*n+1);

% energy deposition
Jy(n+2:2*n+1) = -E*c_tilde*dx*y(1:n)    + ...
    (-E*dx*phi)*y(n+1)     + ...
    eye(n)*y(n+2:2*n+1); % + ...
    (-c_tilde*dx)*diag(phi)*y(7*n+2:8*n+1);

% temperature distribution
Jy(2*n+2:3*n+1) = -R*y(n+2:2*n+1) + ...
    S*y(2*n+2:3*n+1);

% density distribution (approximate with finite difference)
FunXepsY = zeros(n,1);
FunX = zeros(n,1);
for i = 1:n
    FunXepsY(i) = (rho(i)+epsilon*y(3*n+1+i)) - XSteam('rho_pT',P,T(i)+epsilon*y(2*n+1+i))/1000;
    FunX(i) = rho(i) - XSteam('rho_pT',P,T(i))/1000;
end
Jy(3*n+2:4*n+1) = (FunXepsY - FunX)/epsilon + eye(n)*y(3*n+2:4*n+1);

% absorption
Jy(4*n+2:5*n+1) = -DabsxsDrho*eye(n)*y(3*n+2:4*n+1) + ...
    eye(n)*y(4*n+2:5*n+1);

% nu-fission
Jy(5*n+2:6*n+1) = -DnfissDrho*eye(n)*y(3*n+2:4*n+1) + ...
    eye(n)*y(5*n+2:6*n+1);

% diffusion coefficient
Jy(6*n+2:7*n+1) = -DdiffDrho*eye(n)*y(3*n+2:4*n+1) + ...
    eye(n)*y(6*n+2:7*n+1);

% kappa-fission
Jy(7*n+2:8*n+1) = -DkfissDrho*eye(n)*y(3*n+2:4*n+1) + ...
    eye(n)*y(7*n+2:8*n+1);

% eigenvalue
Jy(8*n+2) = -(phi')*y(1:n);

end