% Generalized Rosenbrock's Valley (Banana or 2nd De Jong's) Function
% Range of initial points: -2.048 < xj < 2.048 , j=1,2,...,n
% Some papers take the range as: -5 <= xj <= 10 or -30 <= xj <= 30
% Global minima: (x1,x2,...,xn)=1
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 03 June 2015 | www.al-roomi.org  
 
clear
clc
warning off
     
x1min=2;
x1max=5;
x2min=2;
x2max=5;
R=100; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
p(1)=1
     
for j=1:length(x1)
    
    for i=1:length(x2)
        h1(i)=((log(x1(j)-2)).^2+(log(10-x1(j))).^2)+((log(x2(i)-2)).^2+(log(10-x2(i))).^2);
        h2(i)=(x1(j)).^0.2 + (x2(i)).^0.2;
        p(i+1)=p(1)*h2(i);
        f(i)=h1(i)-p(i+1);
    end
    
    f_tot(j,:)=f;
 
end 
 

 
figure(2)
% surf(x1,x2,(f_tot));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('NEEDLE EYE FUNCTION');
hold on;
%imagesc(x1,x2,f_tot);



