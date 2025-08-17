A11 = [0.0 0.2 0.3;
       0.2 0.4 0.1;
       0.2 0.0 0.3];
Aij = [0.6 0.2 0.2;
       0.2 0.6 0.1;
       0.2 0.2 0.7];

W = [0.0   0.0  1.0   0.0  0.0;
     0.6   0.0  0.0   0.0  0.5;
     0.0   1.0  0.0   1.0  0.0;
     0.0   0.0  0.0   0.0  0.5;
     0.0   0.0  0.0   0.0  0.0];
A = kron(W,Aij) + blkdiag(0.4*A11,zeros(12));
eig(A)
rng(2)
x0 = 5*rand(15,1);
t = 61;
X = zeros(15,t);
e = zeros(1,t);
[ei,V] = eig(A);
v1 = -ei(:,1);
v1 = v1/sum(v1);
xk = x0;

% Open model:
y = [.5;.5;0;0;0;0;0;0;0;0;0;0;.5;0.5;0];

for i=1:t
    X(:,i) = xk;
    xk = A*xk + y;
    e(1, i) = norm(xk/sum(xk)-v1);
end


for j=1:5
    figure
    hold on
    plot(0:t-1,X(3*(j-1)+1,:),'-k','LineWidth',2);
    plot(0:t-1,X(3*(j-1)+2,:),'-r','LineWidth',2);
    plot(0:t-1,X(3*j,:),'-b','LineWidth',2);
    box on
    legend({sprintf('$x_{%d 1}[k]$',j),sprintf('$x_{%d 2}[k]$',j),sprintf('$x_{%d 3}[k]$',j)},'FontSize',16,'Interpreter','latex')
    xlabel('$k$','FontSize',16,'Interpreter','latex');
    ylabel(sprintf('$x_{%i p}[k],~p=1,2,3$',j),'FontSize',16,'Interpreter','latex');
    grid on
end
