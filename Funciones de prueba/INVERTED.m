% Inverted Cosine Wave Function
% Range of initial points: -5 <= xj <= 5 , j=1,2
% Global maxima: (x1,x2)=0
% f(x1,x2)=-n+1 (for n=2, fmin=-1)
% Coded by: Ali R. Alroomi | Last Update: 23 March 2015 | www.al-roomi.org
 
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
        f(i)=-exp(-(x1(j)^2+x2(i)^2+0.5*x1(j)*x2(i))/8)*cos(4*sqrt(x1(j)^2+x2(i)^2+0.5*x1(j)*x2(i)));
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
% title('INVERTED COSINE FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('INVERTED.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);