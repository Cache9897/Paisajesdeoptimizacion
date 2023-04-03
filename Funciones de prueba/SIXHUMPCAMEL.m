% Six-Hump Camel-Back Function (or just Hump Function)
% Range of initial points: -5 < xj < 5 , j=1,2
% Global minima: (x1,x2)=(+-0.08984201368301331,+-0.7126564032704135)
% f(x1,x2)=-1.031628453489877
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-2;
x1max=2;
x2min=-1;
x2max=1;   
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)             
        f(i)=4*x1(j).^2-2.1*x1(j).^4+(1/3)*x1(j).^6+x1(j)*x2(i)-4*x2(i).^2+4*x2(i).^4;
    end
        
    f_tot(j,:)=f;

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,f_tot+2);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('SIX-HUMP CAMEL FUNCTION');
% hold on
imagesc(x1,x2,z);

f = imread ('SIXHUMPCAMEL.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);