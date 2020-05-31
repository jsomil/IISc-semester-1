%   J_n-1(x) +J_n+1(x) = (2n/x)J_n(x) 
fprintf('forward recursion \n\n\n');
Bessel = load('bessel_data2.mat');
a1=Bessel.a;
J2 = zeros(11,3);
J2 = a1(1:2,:);
for i=1:3
    if i==1
        x=1;
    elseif i==2
        x=5;
    else
        x =50;
    end
    for n=1:9
        J2(n+2,i)=((2*n)/x)*J2(n+1,i) - J2(n,i);
    end
end
J2
absolute_error=abs(J2-a1)
relative_error=abs(absolute_error./a1)
save('forward_error.mat','absolute_error')



 