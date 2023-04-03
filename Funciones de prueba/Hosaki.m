% Hosaki's Function
% Range of initial points: 0 <= xj <= 10 , j=1,2 
% Global minima: (x1,x2)=(4,2)
% f(x1,x2)=-2.345811576101292
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=0;
x1max=5;
x2min=0;
x2max=5;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(1-8*x1(j)+7*x1(j).^2-(7/3)*x1(j).^3+(1/4)*x1(j).^4)*(x2(i).^2)*exp(-x2(i));
    end

    f_tot(j,:)=f;

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+3));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('HOSAKI FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Hosaki.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);