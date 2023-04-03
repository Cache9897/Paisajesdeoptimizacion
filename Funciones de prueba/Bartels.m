% Bartels-Conn's Function
% Range of initial points: -500 <= xj <= 500 , j=1,2 
% It has two global minimum: (x1,x2)=(0,0)
% f(x1,x2)=1
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org 

clear
clc
warning off

x1min=-1;
x1max=1;
x2min=-1;
x2max=1;
R=100; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=abs(x1(j).^2+x2(i).^2+x1(j)*x2(i))+abs(sin(x1(j)))+abs(cos(x2(i)));
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
% title('BARTELS CONN FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('Bartels.jpg');
% k = rgb2gray(f);
% figure(3)
% imshow(k);