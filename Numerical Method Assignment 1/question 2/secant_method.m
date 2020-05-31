function [root,tot_iter]= secant_method(init_val1,init_val2)
syms x;
tol=1;
f=@(x) x*sin(x) + 3*cos(x)-x;
%g=@(x)x*cos(x) - 2*sin(x) - 1;
z1=init_val1;
z2=init_val2;
iter=0;
while sign(tol)*tol > 10^-6 
    y=z2-((z2-z1)/(f(z2)-f(z1)))*(f(z2));
    tol=y-z2;
    z1=z2;
    z2=y;
    iter=iter+1;
end
root=z2;
tot_iter=iter;

