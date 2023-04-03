% Dekker-Aarts' Function
% Range of initial points: -20 <= xj <= 20 , j=1,2 
% It has two global minimum: (x1,x2)=(0,15),(0,-15)
% f(x1,x2)=-24777
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-20;
x1max=20;
x2min=-20;
x2max=20;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=10^5*x1(j).^2+x2(i).^2-(x1(j).^2+x2(i).^2).^2+10^-5*(x1(j).^2+x2(i).^2).^4;
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
% title('DEFFER-AARTS FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('DEKKER.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);