% Pen-Holder Function
% Range of initial points: -11 <= xj <= 11 , j=1,2 
% It has four global minimum: (x1,x2)=+-9.646167671043401
% f(x1,x2)=-0.9635348327265058
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-11;
x1max=11;
x2min=-11;
x2max=11;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=-exp(-1/abs(cos(x1(j))*cos(x2(i))*exp(abs(1-sqrt(x1(j).^2+x2(i).^2)/pi))));
    end
    
    f_tot(j,:)=f;

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+1));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('PEN HOLDER FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('PenHolde.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);