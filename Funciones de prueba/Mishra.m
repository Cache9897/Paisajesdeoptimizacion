% Mishra's # 7 or Factorial Fuction
% Range of initial points: -10 <= xj <= 10 , j=1,2,...,n
% For n=1:
% Global minima: x=1
% f(x)=0
% For n=2:
% Infinite number of global minimum: x1*x2=2 >> x1=2/x2
% f(x1,x2)=0
% In general, fmin=0 when the product is equal to the factorial
% Coded by: Ali R. Alroomi | Last Update: 04 June 2015 | www.al-roomi.org   
 
% Larger value of n (=>8) will make the problem very hard
 
clear
clc
warning off
 
x1min=-10;
x1max=10;
x2min=-10;
x2max=10;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
% Compute factorial(n):
Fact1=factorial(1);
Fact2=factorial(2);
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=(x1(j)-Fact1)^2;
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        Prod=x1(j)*x2(i);
        f(i)=(Prod-Fact2)^2;
    end
    
    fn_tot(j,:)=f;
 
end
Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,fn_tot+2000);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('MISHRA 7 FUNCTION');
% hold on
imagesc(x1,x2,z);

f = imread ('Mishra.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);
