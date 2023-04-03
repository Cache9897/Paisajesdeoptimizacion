% Wayburn-Seader's Function # 2
% Range of initial points: -500 <= xj <= 500 , j=1,2,...,n
% Two global minima: (x1,x2)={(0.200138974728779,1),(0.424861025271221,1)}
% The analytical solution: set x2=1 and x1=0.3125+-sqrt((1.613/4)-0.625^2)
% f(X)=0
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
        f(i)=(1.613-4*(x1(j)-0.3125).^2-4*(x2(i)-1.625).^2).^2+(x2(i)-1).^2;
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
% title('WAYBURN SEADER N2 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('WayburnSeader2.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);