%% After running simulation, plot the results



t = out.tout;
x = out.ScopeData{1}.Values.Data;
b = out.ScopeData{2}.Values.Data;
a = zeros(length(t),9);
for i = 1:length(t)
    c = b(:,:,i);
    for j = 1:9
        a(i,j) = c(j);
    end
end

figure
hold on
for i = 1:9
    plot(t, x(:,3*i-2),'-k', "LineWidth", 1);
    plot(t, x(:,3*i-1),'-b', "LineWidth", 1);
    plot(t, x(:,3*i),'-r', "LineWidth", 1);
end
legend('x_{i1}, i=1,\ldots,9', 'x_{i2}, i=1,\ldots,9', 'x_{i3}, i=1,\ldots,9', "Fontsize", 16);
xlabel('t [s]',"Fontsize", 16)
ylabel('x_{ip}, p=1,2,3','FontSize', 16)
grid on
box on
% ylim([-7,5])

figure
hold on
plot(t, a(:,1),'-k',"LineWidth", 2);
plot(t, a(:,2),'-b',"LineWidth", 2);
plot(t, a(:,3),'-r',"LineWidth", 2);
plot(t, a(:,4),'--k',"LineWidth", 2);
plot(t, a(:,5),'--b',"LineWidth", 2);
plot(t, a(:,6),'--r',"LineWidth", 2);
plot(t, a(:,7),'-g',"LineWidth", 2);
plot(t, a(:,8),'-m',"LineWidth", 2);
plot(t, a(:,9),'-c',"LineWidth", 2);
legend('a_1', 'a_2', 'a_3','a_4', 'a_5', 'a_6','a_7', 'a_8', 'a_9', "Fontsize", 14, "NumColumns", 5);
xlabel('t [s]',"Fontsize",16,"Interpreter","tex");
ylabel('a_i, i = 1,...,9',"Fontsize",16,"Interpreter","tex");
grid on
box on