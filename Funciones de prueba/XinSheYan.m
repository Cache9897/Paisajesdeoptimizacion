% Xin-She Yang's Function # 1
% Range of initial points: -20 <= xj <= 20 , j=1,2,...,n
% Global minima: (x1,x2,...,xn)=c
% f(X)=-1
% Coded by: Ali R. Alroomi | Last Update: 12 August 2015 | www.al-roomi.org
    
clear
clc
warning off
 
c=pi;
m=5;
beta=15;
 
x1min=-20;
x1max=20;
x2min=-20;
x2max=20;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max; 
    
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=(exp(-(x1(j)/beta)^(2*m))-2*exp(-(x1(j)-c)^2))*(cos(x1(j)))^2;
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=(exp(-(x1(j)/beta)^(2*m)-(x2(i)/beta)^(2*m))- ...
            2*exp(-(x1(j)-c)^2-(x2(i)-c)^2))*(cos(x1(j)))^2*(cos(x2(i)))^2;
    end
    
    fn_tot(j,:)=fn;
 
end
Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(fn_tot+1));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('XIN SHEN YANG N1 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('XinSheYan.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);