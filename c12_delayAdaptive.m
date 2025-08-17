%% Initialization
x0 = 5;
a0 = 1/5;
a0*pi/2
tau = 1;
gamma = 0.1


%% After running simulation, plot the results
t = out.tout;
x = out.ScopeData{1}.Values.Data
gamma = out.ScopeData{2}.Values.Data
figure
hold on
plot(t,x,'-k',"LineWidth",2)
legend('x(t)',"Fontsize",16)
xlabel('t [s]',"Fontsize",16)
ylabel('x',"Fontsize",16)
grid on
box on

figure
hold on
plot(t,gamma,'-k',"LineWidth",2)
legend('\gamma(t)',"Fontsize",16)
xlabel('t [s]',"Fontsize",16)
ylabel('\gamma',"Fontsize",16)
grid on
box on