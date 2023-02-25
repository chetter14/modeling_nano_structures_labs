//x1=[-3:0.1:3]
//x2=[-3:0.2:3]
function fun2d
x1 = linspace(-3,3,100)
x2 = linspace(-3,6,100)
y1 = cos(x1)
y2 = sin(x2)
plot(x1,y1,'red')
plot(x2,y2)
p = legend(["cosx"; "sinx"]) 
xgrid()
endfunction

function fun3d
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
endfunction

