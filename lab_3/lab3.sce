h = 1.034 * 10^-34
m = 9.1 * 10^-31
U = 6;
w = 1
E = linspace(U,2*U,10)
k2 = sqrt(8*m*%pi^2*E / h^2)
R  = (1 + (4*E.*(E - U)) ./ (U^2 * (sin(k2*w))^2 ))^(-1);
T = (1 + (U^2 * (sin(k2*w))^2) ./ (4*E.*(E-U)))^(-1);
//////////////////////////
s = splin(E,T)
EE = linspace(U,2*U,1000);
u = interp(EE,E,T,s);
plot(EE,u);
//////////////////////////
r = splin(E,R)
p = interp(EE,E,R,r);
plot(EE,p,'r');
xlabel("Electron energy, eV")
ylabel("Probability")
legend((['T';'R']))
//////////////////////////
xgrid
