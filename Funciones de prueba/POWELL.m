% Powell's Badly Scaled Function
% Range of initial points: -10 < xj < 10 , j=1,2 
% Global minima: (x1,x2)=(1.098...X10^-5,9.106...)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-10;
x1max=10;
x2min=-10;
x2max=10;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        f1(i)=(10000*x1(j)*x2(i)-1).^2;
        f2(i)=(exp(-x1(j))+exp(-x2(i))-1.0001).^2;
        f(i)=f1(i)+f2(i);
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
% title('POWELL BADLY FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('POWELL.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);