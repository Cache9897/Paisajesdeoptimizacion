% Trefethen's Function
% Range of initial points: -6.5 <= x1 <= 6.5 , -4.5 <= x2 <= 4.5 
% Global minima: (x1,x2)=(-0.02440307923,0.2106124261)
% f(x1,x2)=-3.3068686474
% Coded by: Ali R. Alroomi | Last Update: 26 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-6.5;
x1max=6.5;
x2min=-4.5;
x2max=4.5;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=0.25*x1(j).^2+0.25*x2(i).^2+exp(sin(50*x1(j)))-sin(10*x1(j)+ ...
            10*x2(i))+sin(60*exp(x2(i)))+sin(70*sin(x1(j)))+sin(sin(80*x2(i)));
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
% title('TREFETHEN FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Trefethen.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);