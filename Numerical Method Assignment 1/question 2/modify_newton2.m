function [root,tot_iter]= modify_newton2(init_val1)
syms x;
tol=1;
f=@(x) sin(x) - 0.1*x ;
g=@(x) cos(x) - 0.1;
h=@(x) -sin(x);
z1=init_val1;
iter=0;
while sign(tol)*tol > 10^-6 
    y=z1-f(z1)*g(z1)/(g(z1)^2-f(z1)*h(z1));
    tol=y-z1;
    z1=y;
    iter=iter+1;
end
root=z1;
tot_iter=iter;

