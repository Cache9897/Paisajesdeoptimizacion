% Price's Function # 3 (Modified Rosenbrock's or Price-Rosenbrock's Function)
% Range of initial points: -5 <= xj <= 5 , j=1,2 
% Some references consider: -50 <= xj <= 50 or -500 <= xj <= 500
% Two global minimum: (x1,x2)={(0.341307503353524,0.116490811845416),(1,1)}
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 14 June 2015 | www.al-roomi.org

% It is based on the Rosenbrock's Function

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
        f(i)=100*(x2(i)-x1(j).^2).^2+(6.4*(x2(i)-0.5).^2-x1(j)-0.6).^2;
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
% title('PRICE N3 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('price3.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);