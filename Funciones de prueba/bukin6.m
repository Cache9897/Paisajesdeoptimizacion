% Bukin's Function # 6
% Range of initial points: -15 <= x1 <= -5 , -3 <= x2 <= 3 
% Global minima: (x1,x2)=(-10,1)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-15;
x1max=-5;
x2min=-3;
x2max=3;
R=100; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=100*sqrt(abs(x2(i)-0.01*x1(j).^2))+0.01*abs(x1(j)+10);
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
% title('BUKIN N6 FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('bukin6.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);