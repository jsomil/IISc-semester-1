


disp("Newton's Method for x*sin(x) + 3*cos(x)-x :::");
[root,tot_iter]= newton_method(-5)
[root,tot_iter]= newton_method(-3)
[root,tot_iter]= newton_method(1)

disp("Modify Newton's Method for x*sin(x) + 3*cos(x)-x :::");
[root,tot_iter]= modify_newton2(-5)
[root,tot_iter]= modify_newton2(-3)
[root,tot_iter]= modify_newton2(1)


disp("Secant Method for x*sin(x) + 3*cos(x)-x :::");

[root,tot_iter]= secant_method(-5,-4)
[root,tot_iter]= secant_method(-3,-1)
[root,tot_iter]= secant_method(1,3)

disp(" Newton's Method for sin(x) - 0.1*x :::");

[root,tot_iter]= newton_method2(3)
[root,tot_iter]= newton_method2(7)
[root,tot_iter]= newton_method2(8)

disp("Modify Newton's Method for sin(x) - 0.1*x :::");

[root,tot_iter]= modify_newton2(3)
[root,tot_iter]= modify_newton2(7)
[root,tot_iter]= modify_newton2(8)


disp("Secant Method for sin(x) - 0.1*x :::");


[root,tot_iter]= secant_method2(3,4)
[root,tot_iter]= secant_method2(7,8)
[root,tot_iter]= secant_method2(8,9)
