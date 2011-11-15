% Process Serpent

% load files
load results_absxs
load results_diff
load results_nsf

% create x space
x = linspace(0.623,0.776,1000);

% calculate regression info
[r_absxs,m_absxs,b_absxs] = regression(results_absxs(:,1)',results_absxs(:,2)');
[r_diff,m_diff,b_diff] = regression(results_diff(:,1)',results_diff(:,2)');
[r_nsf,m_nsf,b_nsf] = regression(results_nsf(:,1)',results_nsf(:,2)');

% plot figures
figure
plot(results_absxs(:,1),results_absxs(:,2),'b*');
hold on
plot(x, m_absxs*x + b_absxs,'r-')
xlabel('Coolant Density [g/cc]')
ylabel('Absorption Macroscopic Cross Section [cm^{-1]}')
legend('Serpent Data',horzcat('Linear Fit, m = ',num2str(m_absxs)));

figure
plot(results_diff(:,1),results_diff(:,2),'b*');
hold on
plot(x, m_diff*x + b_diff,'r-')
xlabel('Coolant Density [g/cc]')
ylabel('Diffusion Coefficient [cm]')
legend('Serpent Data',horzcat('Linear Fit, m = ',num2str(m_diff)));

figure
plot(results_nsf(:,1),results_nsf(:,2),'b*');
hold on
plot(x, m_nsf*x + b_nsf,'r-')
xlabel('Coolant Density [g/cc]')
ylabel('Nu-Fission Macroscpoic Cross Section [cm^{-1}]')
legend('Serpent Data',horzcat('Linear Fit, m = ',num2str(m_nsf)));