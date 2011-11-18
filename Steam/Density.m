% Look at density dependence on temperature
% 2.29 Project

% get space of temperatures [C]
T = linspace(290,330,1000)';

% system pressure [bar]
P = 155;

% loop around and get density vector
rho = zeros(length(T),1);
for i = 1:length(T)
    
    % Look up density
    rho(i) = XSteam('rho_pT',P,T(i))/1000;
    
end

% get linear regression
[r,m,b] = regression(T',rho');
 
% plot density versus temperature
figure
plot(T,rho,'b*');
hold on
plot(T,m*T + b,'r-')
xlabel('Temperature [C]')
ylabel('Density [g/cc]')
legend('XSteam Data',horzcat('Linear Fit, m = ',num2str(m)));