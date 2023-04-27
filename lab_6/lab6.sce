clear; clc;
U1 = 4 * 1.6 * 10^-19;
U2 = 2 * 1.6 * 10^-19;
U = 4 * 1.6 * 10^-19;
E = linspace(U,2*U,100);
L = 10^-9;
m = 9.1 * 10^-31;
h = 6.02 * 10^-34;
/////////////////////////
betta = sqrt(8*m*%pi^2 * (U1 - E) / h^2);
k1 = sqrt(8*m*%pi^2 * E / h^2);
k3 = sqrt(8*m*%pi^2*(E-U2) / h^2);
Z = (k1^2 + betta^2) .* (k3^2 + betta^2) .* (sinh(betta * L))^2 + (k1 + k3)^2 .* betta^2;
T = 4*k1.*k3.*betta^2 ./ Z;
R = 1 - T;
//////////////////////////
plot(E,T);
plot(E,R,'r');
legend(['T';'R']);
xlabel("Electron energy, eV")
ylabel("Probability")
