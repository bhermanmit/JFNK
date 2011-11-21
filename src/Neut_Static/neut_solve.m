% Bryan Herman
% Compare solution methods for static neutronics
% clear; close all;

% get inputs
neut_input_file

% build loss matrix
M = create_operators('M',geom,neut);

% build production matrix
F = create_operators('F',geom,neut);

% guess initial keff and phi
keff = 1.0;
phi = ones(size(M,1),1);
phi = phi/norm(phi);

% solve for eigenvalue and eigenvector by power iteration
disp('Power Iteration')
tic
[keff_1,phi_1] = power_iter(M,F,phi,keff,1000);
toc

% solve for eigenvalue and eigenvector by Newton-GMRES
disp('JFNK - Jacobian-vector Analytic Multiplication')
tic
[keff_2,phi_2] = power_iter(M,F,phi,keff,2);
[L,U] = create_precond_neut(M,F,phi,1/keff); % get approx preconditioner
x2 = [phi_2;1/keff_2]; % create initial guess
x2 = JFNK_neut(@(x) neut_res_fun(M,F,x),@(x,y) Jacobian_vec_mult(M,F,x,y),x2,L,U);
phi_2 = x2(1:size(M,1));
keff_2 = 1/x2(size(M,1)+1);
toc

% solve for eigenvalue and eigenvector by JFNK
disp('JFNK - Finite Difference Approxiation of Jacobian=vector')
tic
[keff_3,phi_3] = power_iter(M,F,phi,keff,2);
[L,U] = create_precond_neut(M,F,phi,1/keff); % get approx preconditioner
x3 = [phi_3;1/keff_3]; % create initial guess
x3 = JFNK_neut(@(x) neut_res_fun(M,F,x),@(x,y) Jacobian_vec_FD(@(x) neut_res_fun(M,F,x),x,y),x3,L,U);
phi_3 = x3(1:size(M,1));
keff_3 = 1/x3(size(M,1)+1);
toc

% normalize answers
phi_1 = phi_1/trapz(phi_1);
phi_2 = phi_2/trapz(phi_2);
phi_3 = phi_3/trapz(phi_3);

% plot eigenvectors
figure
hold on
l = linspace(geom.dx/2,geom.n*geom.dx-geom.dx/2,geom.n);
plot(l,phi_1,'b');
plot(l,phi_2,'r');
plot(l,phi_3,'g');
xlabel('Slab Length [cm]')
ylabel('Flux [-]');
legend('Power Iteration','Analytic JFNK','FD JFNK');
set(gcf, 'PaperPositionMode', 'auto');
figname = strcat('Flux.png');
print('-dpng',figname);
figure
hold on
plot(l,phi_2-phi_1,'r');
plot(l,phi_3-phi_1,'g');
xlabel('Slab Length [cm]')
ylabel('Flux Difference wrt Power Iteration [-]');
legend('Analytic JFNK','FD JFNK');
set(gcf, 'PaperPositionMode', 'auto');
figname = strcat('diff_flux.png');
print('-dpng',figname);