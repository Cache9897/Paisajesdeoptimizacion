% Himmelblau's Function
% Range of initial points: -6 <= xj <= 6 , j=1,2
% It has 4 global minimum: (x1,x2)=(3,2),(3.584428340330,-1.848126526964),
% (-3.779310253378,-3.283185991286),(-2.805118086953,3.131312518250)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org 

clear
clc
warning off

x1min=-6;
x1max=6;
x2min=-6;
x2max=6;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=((x1(j)+x2(i).^2-7).^2)+((x1(j).^2+x2(i)-11).^2);
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
% title('HIMMELBLAU FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('Himmelblau.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);