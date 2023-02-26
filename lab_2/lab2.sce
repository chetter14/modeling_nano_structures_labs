h = 1.034 * 10^-34
m = 9.1 * 10^-31
U = 4;
E = linspace(U,2*U,100)
k1 = sqrt(8*m*%pi^2 * E / h^2)
k2 = sqrt(8*m*%pi^2 * (E - U) / h^2)

R = (k1 - k2)^2 ./ (k1 + k2)^2 ; 
T = 4*k1.*k2 ./ (k1 + k2)^2 ;

plot(E, T);
xlabel("энергия электрона, эВ")
ylabel("Вероятность, отн. ед")
plot(E, R,"red");
o = legend(['T';'R']);
xgrid;
