//x1=[-3:0.1:3]
//x2=[-3:0.2:3]
x1 = linspace(-3,2,100)
x2 = linspace(-3,2,100)
for i=1:length(x1)
    for j=1:length(x2)    
        y(i,j) = cos(x1(i))^2*cos(x2(j))^2;
    end
end
f = scf();
plot3d1(x1,x2,y);
f.color_map = jetcolormap(32);
xlabel("X1 argument")
ylabel("X2 argument")
zlabel("Function")
