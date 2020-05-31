%   J_n-1(x) +J_n+1(x) = (2n/x)J_n(x) 
fprintf('Backward recursion \n\n\n');
Bessel = load('bessel_data2.mat');
a1=Bessel.a;
J2 = zeros(11,3);
J2(10:11,:) = a1(10:11,:);
for i=1:3
    if i==1
        x=1;
    elseif i==2
        x=5;
    else
        x =50;
    end
    for n1=1:9
        n=10-n1;
        J2(n,i)=((2*n)/x)*J2(n+1,i) -J2(n+2,i);
    end
end
J2
absolute_error=abs(J2-a1)
relative_error=abs(absolute_error./a1)
save('backward_error.mat','absolute_error')



 