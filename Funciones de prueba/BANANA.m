% Banana-Shape Function
% Range of initial points: -1.5 <= x1 <= 1.5 , -2.5 <= x2 <= 0.5
% Global minima: (x1,x2)=(0,0)
% f(x1,x2)=-25
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org 

clear
clc
warning off

x1min=-1.5;
x1max=1.5;
x2min=-2.5;
x2max=0.5;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=-(100/(10*((x1(j)+1).^2-(x2(i)+1)).^2+x1(j).^2+4));
    end
    
    f_tot(j,:)=f;

end

Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(2)
% surf(x1,x2,(f_tot));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('BANANA-SHAPE FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('Banana.jpg');
% k = rgb2gray(f);
% figure(3)
% imshow(k);
