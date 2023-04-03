% Friedman's Function (when removing x3, x4 and x5)
% Range of initial points: -10 <= xj <= 25 , j=1,2 
% Infinite number of global minimum happen when sin(y)=-1 >> where y=pi*x1*x2
% f(x1,x2)=-10 >> f(X)=-27.5 when n=5
% Coded by: Ali R. Alroomi | Last Update: 11 August 2015 | www.al-roomi.org
 
clear
clc
warning off
 
x1min=-1.5;
x1max=1.5;
x2min=-1.5;
x2max=1.5;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=10*sin(pi*x1(j)*x2(i));
    end
 
    f_tot(j,:)=f;
 
end

Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+20));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('FRIEDMAN FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('Friedman.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);