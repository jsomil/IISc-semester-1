function [root,tol_iter]=newton_method_system()
syms x1 x2
x=[x1;x2];
f=[sin(x1)+3*cos(x2)-2;cos(x1)-sin(x2)+0.2];
tol=2;
init_val=[1;1];
z=init_val;
g=jacobian(f,x);
x1=1;
x2=1;
iter=0;
while tol > 10^-8 
    y=z-eval(g)\eval(f);
    x1=y(1);
    x2=y(2);
    tol=max(abs((y-z)));
    z=y;
    iter=iter+1;
    if iter==15 
        break;
    end
end
root=z
tot_iter=iter