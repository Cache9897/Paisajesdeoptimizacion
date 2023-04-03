% Parsopoulos' Function
% Range of initial points: -5 <= xj <= 5 , j=1,2
% It has 12 global minimum: (x1,x2)=(m*pi/2,n*pi) , m=+-1,+-3,... and
% n=0,+-1,+-2,...
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 09 August 2015 | www.al-roomi.org
  
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
 
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(cos(x1(j))).^2+(sin(x2(i))).^2;
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
% title('PARSOPOULOS FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Parsopoulo.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);