% Mishra's # 8 or Decanomial Function
% Range of initial points: -10 <= xj <= 10 , j=1,2 
% Global minima: (x1,x2)=(2,-3)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=0;
x1max=2.5;
x2min=-4;
x2max=-2;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        % First polynomial
        f1(i)=x1(j).^10-20*x1(j).^9+180*x1(j).^8-960*x1(j).^7+3360*x1(j).^6-8064*x1(j).^5+13340*x1(j).^4-15360*x1(j).^3+11520*x1(j).^2-5120*x1(j)+2624;
        % Second polynomial
        f2(i)=x2(i).^4+12*x2(i).^3+54*x2(i).^2+108*x2(i)+81;
        % overall equation
        f(i)=0.001*(abs(f1(i))+abs(f2(i))).^2;
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
% title('MISHRA N8 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Mishra8.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);