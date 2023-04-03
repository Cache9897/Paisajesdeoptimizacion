% Wayburn-Seader's Function # 3
% Range of initial points: -500 <= xj <= 500 , j=1,2,...,n
% Global minima: (x1,x2)=(5.146896745324582,6.839589743000071)
% f(X)=19.105879794567979
% Coded by: Ali R. Alroomi | Last Update: 18 August 2015 | www.al-roomi.org
    
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
        f(i)=2*x1(j).^3/3-8*x1(j).^2+33*x1(j)-x1(j)*x2(i)+5+...
            ((x1(j)-4).^2+(x2(i)-5).^2-4).^2;
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
% title('WAYBURN SEADER N3 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('WayburnSeader3.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);
