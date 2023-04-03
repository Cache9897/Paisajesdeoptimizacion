% Bird Function
% Range of initial points: -2*pi <= xj <= 2*pi , j=1,2 
% It has two global minimum: (x1,x2)=(4.701055751981055,3.152946019601391),(-1.582142172055011,-3.130246799635430)
% f(x1,x2)=-106.7645367198034
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org 

clear
clc
warning off
    
x1min=-2*pi;
x1max=2*pi;
x2min=-2*pi;
x2max=2*pi;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;   
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(x1(j)-x2(i)).^2+exp((1-sin(x1(j))).^2)*cos(x2(i))+exp((1-cos(x2(i))).^2)*sin(x1(j));
    end
    
    f_tot(j,:)=f;

end

Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(2)
% surf(x1,x2,(f_tot+100));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('BIRD FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('Bird.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);
