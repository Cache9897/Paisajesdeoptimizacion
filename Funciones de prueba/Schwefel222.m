% Schwefel's Problem # 2.22
% Range of initial points: -10 <= xj <= 10 , j=1,2,...,n
% Global minima: (x1,x2,...,xn)=0;
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 08 June 2015 | www.al-roomi.org 
 
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
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=abs(x1(j))+abs(x1(j));
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=abs(x1(j))+abs(x2(i))+abs(x1(j))*abs(x2(i));
    end
    
    fn_tot(j,:)=fn;
 
end

Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(fn_tot));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('SCHWEFEL 2.22 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Schwefel222.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);