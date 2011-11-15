function [keff,phi] = run_jfnk(phi,keff)

global M F

% get problem size
m = size(M,1);

% set up sparse Jacobian
J = sparse(zeros(m+1)); % jacobian of function

% set function evaluation routine
myfun = @jfnk_fun;

% set matrix vector multiplication functino
mymatvecmult = @matvecmult_exact;

% Run 1 power iteration
phinew = M\(1/keff*F*phi);
keff = keff*sum((F*phinew).*(F*phinew))/sum((F*phi).*(F*phinew));

% renormalize phi
phi = phinew/norm(phinew);

% form approx Jacobian once
J(1:m,1:m) = M - 1/keff*F;
J(1:m,m+1) = -F*phi;
J(m+1,1:m) = -phi.';

% form constant preconditioner
setup.type = 'crout';
setup.milu = 'row';
setup.droptol = 0.1;
[L,U] = ilu(J,setup);
P = L*U;

% construct guess
m = size(M,1);
xo = zeros(m+1,1);
xo(1:m) = phi;
xo(m+1) = 1/keff;

% solve system
x = JFNK_neut(myfun,mymatvecmult,xo,P);

% extract info
keff = 1/x(m+1);
phi = x(1:m);

end
