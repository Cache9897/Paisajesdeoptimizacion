% Egg-Holder Function
% Range of initial points: -512 <= xj <= 512 , j=1,2,...,n 
% Global minima: (x1,x2)=(512,404.231805123817)
% f(x1,x2)=-959.640662720850742 (determined by Maple 2015)
% Coded by: Ali R. Alroomi | Last Update: 22 June 2015 | www.al-roomi.org
 
clear
clc
warning off
 
x1min=-512;
x1max=512;
x2min=-512;
x2max=512;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;    
 
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=-x1(j)*sin(sqrt(abs(x1(j)-x2(i)-47)))-(x2(i)+47)*sin(sqrt(abs(0.5*x1(j)+x2(i)+47)));
    end
    
    f_tot(j,:)=f;
 
end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,f_tot+2000);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('EGG HOLDER FUNCTION');
% hold on
imagesc(x1,x2,z);

% f = imread ('EggHolder.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);