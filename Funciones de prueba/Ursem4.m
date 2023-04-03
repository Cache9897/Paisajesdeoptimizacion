% Ursem Function # 4
% Range of initial points: -2 <= xj <= 2 , j=1,2
% Global minima: (x1,x2)=(0,0)
% f(x1,x2)=-1.5
% Coded by: Ali R. Alroomi | Last Update: 29 March 2015 | www.al-roomi.org
  
clear
clc
warning off

x1min=-2;
x1max=2;
x2min=-2;
x2max=2;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=-3*sin(0.5*pi*x1(j)+0.5*pi)*((2-sqrt(x1(j).^2+x2(i).^2))/4);
    end
    
    f_tot(j,:)=f;

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+2));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('URSEM N4 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Ursem4.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);