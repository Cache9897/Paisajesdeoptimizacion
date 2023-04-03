% Generalized Penalized Function # 2
% Range of initial points: -50 <= xj <= 50 , j=1,2,...,n
% Global minima: (x1,x2,...,xn)=1
% f(X)=0 
% Coded by: Ali R. Alroomi | Last Update: 10 June 2015 | www.al-roomi.org  
 
clear
clc
warning off
 
x1min=-5;
x1max=5;
x2min=-5;
x2max=5;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
a=5;
k=100;
m=4;
 
for j=1:length(x1)
     
    if x1(j)>a
        u1=k*(x1(j)-a).^m;
    elseif x1(j)<(-a)
        u1=k*(-x1(j)-a).^m;
    else
        u1=0;
    end
     
    for i=1:length(x2)
        if x2(i)>a
            u2=k*(x2(i)-a).^m;
        elseif x2(i)<(-a)
            u2=k*(-x2(i)-a).^m;
        else
            u2=0;
        end
        g=((x1(j)-1).^2)*(1+(sin(3*pi*x2(i))).^2);
        f(i)=0.1*(((sin(3*pi*x1(j))).^2)+g+((x2(i)-1).^2)*(1+(sin(2*pi*x2(i))).^2))+u1+u2;
    end
    
    f_tot(j,:)=f;
 
end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('PENALIZED N2 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('PENALIZED2.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);