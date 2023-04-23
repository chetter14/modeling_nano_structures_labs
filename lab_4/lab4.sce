U=1.6e-18;//J
E=[(1.6e-18):(1e-20):(3.2e-18)];//J
E1=[10:6.2e-2:19.96];//eV
W=2e-9;//m

m=9.1*10^(-31);
pi=3.14;
h=6.62*10^(-34);

for i=1:1:length(E)
K(i)=sqrt((8*m*(pi^2)*E(i))/h^2);
end

j=1;
while j<length(E)+1
a(j)=E(j)-U;
a1(j)=a(j).*E(j);
b=(U^2);
c(j)=((sin(K(j)*W))^2);

R(j)=1/(1+(4*a1(j))/(b*c(j))); // reflectance
T(j)=1/(1+(b*c(j))/(4*a1(j))); // transmittance
j=j+1;
end

plot(E1,R,'r',E1,T,'b');
xgrid();
xtitle("","Electron energy, eV", "Probability");
hl=legend(['Reflectance';'Transmittance']);

