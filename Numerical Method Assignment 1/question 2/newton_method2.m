function [root,tot_iter]= newton_method2(init_val)
syms x;
tol=1;
f=@(x) sin(x) - 0.1*x ;
g=@(x) cos(x) - 0.1;
z=init_val;
%z=0.1;
iter=0;
while sign(tol)*tol > 10^-6 
    y=z-f(z)/g(z);
    tol=y-z;
    z=y;
    iter=iter+1;
end
root=z;
tot_iter=iter;

