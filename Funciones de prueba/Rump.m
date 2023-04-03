% Rump Function
% Range of initial points: -500 <= xj <= 500 , j=1,2
% Global minima: (x1,x2)=(0,0)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 14 May 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-1;
x1max=1;
x2min=-1;
x2max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=abs((333.75-x1(j).^2)*x2(i).^6+x1(j).^2*(11*x1(j).^2*x2(i).^2-121*x2(i).^4-2)+5.5*x2(i).^8+x1(j)/(2+x2(i)));
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
% title('RUMP FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Rump.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);
