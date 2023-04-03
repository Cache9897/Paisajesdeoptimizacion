% Branin's RCOS Function # 2
% Range of initial points: -5 <= xj <= 10 , 0 <= xj <= 15
% Global minima: (x1,x2)=(-3.196988423389338,12.526257883092258)
% f(x1,x2)=-0.179891239069905
% Coded by: Ali R. Alroomi | Last Update: 26 May 2015 | www.al-roomi.org

clear
clc
warning off
    
x1min=-5;
x1max=10;
x2min=0;
x2max=15;
R=100; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

% constants
a=1;
b=5.1/(4*pi^2);
c=5/pi;
d=6;
e=10;
g=1/(8*pi);
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f1=a*(x2(i)-b*x1(j).^2+c*x1(j)-d)^2;
        f2=e*(1-g)*cos(x1(j))*cos(x2(i));
        f3=log(x1(j).^2+x2(i).^2+1);
        f(i)=-1/(f1+f2+f3+e);
    end
        
    f_tot(j,:)=f;

end

Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,f_tot+0.2);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('BRANIN N2 FUNCTION');
% hold on
imagesc(x1,x2,z);

% f = imread ('BRANIN2.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);
