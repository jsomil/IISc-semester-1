function [root,tot_iter]= newton_method(init_val)
syms x;
tol=1;
f=@(x) x*sin(x) + 3*cos(x)-x; 
g=@(x)x*cos(x) - 3*sin(x) - 1;
z=init_val;
iter=0;
while sign(tol)*tol > 10^-6 
    y=z-f(z)/g(z);
    tol=y-z;
    z=y;
    iter=iter+1;
end
root=z;
tot_iter=iter;

