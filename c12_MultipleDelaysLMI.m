clear all
clc
n = 9;
m = 14;
d = 3;
rng(5);

s = [1 1 2 2 3 3 4 4 5 5 6 7 7 8];
t = [2 3 3 4 4 5 5 6 7 9 7 8 9 9];
G = graph(s,t);
H = incidence(G)'*eye(9);

A12 = [1       sqrt(3)/2 0;
      sqrt(3)/2 1       0;
       0       0       0];
A13 = [0 0 0;
       0 1 0;
       0 0 1];
A23 = [2 1 0;
       1 1 0;
       0 0 1];
A24 = A13; A34 = A13;
A35 = [1 0 0;
       0 0 0;
       0 0 0];
A45 = diag([1, 2, 3]);
A78 = eye(3);
A79 = eye(3);
A89 = ones(3,3);
A46 = A89;
A67 = A12;
A57 = A35;
A59 = A13;
W = blkdiag(A12,A13,A23,A24,A34,A35,A45,A46,A57,A59,A67,A78,A79,A89);

Hbar = kron(H, eye(d));
L = Hbar'*W*Hbar;
H1 = [H(1:5,:); zeros(9,9)];
H2 = [zeros(5,9); H(6:10,:); zeros(4,9)];
H3 = [zeros(10,9); H(11:14,:)];
lambda = max(eig(L));
tauMax = pi/(2*lambda)

Hbar1 = kron(H1,eye(d));
Hbar2 = kron(H2,eye(d));
Hbar3 = kron(H3,eye(d));
L1 = Hbar1'*W*Hbar1;
L2 = Hbar2'*W*Hbar2;
L3 = Hbar3'*W*Hbar3;
E=[eye(d*(n-1));-kron(ones(1,n-1),eye(d))];
Lambda = E'*L*E;
Lambda1 = E'*L1*E;
Lambda2 = E'*L2*E;
Lambda3 = E'*L3*E;
I = eye(d*(n-1));
I1 = eye(d*n);
Z = zeros(d*(n-1));
Z1 = zeros(d*n);
cvx_begin sdp
  variable tau(3,1);
  minimize (sum(tau))
  subject to
  [-2*Lambda,Lambda1,Lambda2,Lambda3,-E'*L,-E'*L,-E'*L;
     Lambda1,-(tau(1,1))*I,Z,Z,E'*L1,E'*L1,E'*L1;
     Lambda2,Z,-(tau(2,1))*I,Z,E'*L2,E'*L2,E'*L2;
     Lambda3,Z,Z,-(tau(3,1))*I,E'*L3,E'*L3,E'*L3;
     -L*E, L1*E, L2*E, L3*E, -(tau(1,1))*I1,Z1,Z1;
     -L*E, L1*E, L2*E, L3*E, Z1, -(tau(2,1))*I1,Z1;
     -L*E, L1*E, L2*E, L3*E, Z1, Z1, -(tau(3,1))*I1]<=0;
  tau(1,1)>=0.001;
  tau(2,1)>=0.01;
  tau(3,1)>=0.01;

%   [-2*L+sum(tau)*L^2,L1-sum(tau)*L*L1,L2-sum(tau)*L*L2,L3-sum(tau)*L*L3;
%      L1-sum(tau)*L1*L,-inv_pos(tau(1,1))*eye(d*n)+sum(tau)*L1^2,-sum(tau)*L1*L2,-sum(tau)*L1*L3;
%      L2-sum(tau)*L2*L,-sum(tau)*L2*L1,-inv_pos(tau(2,1))*eye(d*n)+sum(tau)*L2^2,-sum(tau)*L2*L3;
%      L3-sum(tau)*L3*L,-sum(tau)*L3*L1,-sum(tau)*L3*L2,-inv_pos(tau(3,1))*eye(d*n)-sum(tau)*L3^2]<=0;
cvx_end












