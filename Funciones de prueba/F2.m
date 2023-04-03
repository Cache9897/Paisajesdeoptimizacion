% L (or F2) Function
% Range of initial points: 0 <= xj <= 1 , j=1,2,...,n
% Global minima: (x1,x2,...,xn)= L4;
% f(X)=-1
% Coded by: Ali R. Alroomi | Last Update: 17 August 2015 | www.al-roomi.org
    
clear
clc
warning off
 
% coefficients
L1=5.1;
L2=0.5;
L3=4*log(2);
L4=0.066832364099628;%0.0667;
L5=0.64;
k=6;
 
x1min=0;
x1max=1;
x2min=0;
x2max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=-sin(L1*pi*x1(j)+L2)^k*exp(-L3*((x1(j)-L4)/L5)^2);
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=-(sin(L1*pi*x1(j)+L2)^k*exp(-L3*((x1(j)-L4)/L5)^2)*...
            sin(L1*pi*x2(i)+L2)^k*exp(-L3*((x2(i)-L4)/L5)^2));
    end
    
    fn_tot(j,:)=fn;
 
end

Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(fn_tot-1));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('F2 FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('F2.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);