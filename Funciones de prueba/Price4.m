% Price's Function # 4
% Range of initial points: -500 <= xj <= 500 , j=1,2 
% Three global minimum: (x1,x2)=(0,0),(2,4),(1.464352119663698,-2.506012760781662)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 15 June 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-4.500;
x1max=4.500;
x2min=-4.500;
x2max=4.500;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(2*x1(j).^3*x2(i)-x2(i).^3).^2+(6*x1(j)-x2(i).^2+x2(i)).^2;
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
% title('PRICE N4 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('price4.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);