U = 4 * 1.6 * 10^-19;
h = 1.034 * 10^-34;
m = 9.1 * 10^-31;
L = 10^-9;
E = linspace(U, 2*U, 10000);
k2 = sqrt(8*m*%pi^2 / h^2 * (E - U))
R  = (1 + (4*E.*(E - U)) ./ (U^2 * (sin(k2*L))^2 ))^(-1);
T = (1 + (U^2 * (sin(k2*L))^2) ./ (4*E.*(E-U)))^(-1);
plot(E,R, 'r');
plot(E,T,'g');
xlabel("Electron energy, eV")
ylabel("Probability")
legend((['R';'T']))
//////////////////////////
xgrid
