% Goldstein-Price's Function
% Range of initial points: -2 < xj < 2 , j=1,2
% Global minima: (x1,x2)=(0,-1)
% f(x1,x2)=3
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off
    
x1min=-2;
x1max=2;
x2min=-2;
x2max=2;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;   
    
for j=1:length(x1)
        
    for i=1:length(x2)              
        u(i)=1+((x1(j)+x2(i)+1).^2)*(19-14*x1(j)+3*x1(j).^2-14*x2(i)+6*x1(j)*x2(i)+3*x2(i).^2);
        v(i)=30+((2*x1(j)-3*x2(i)).^2)*(18-32*x1(j)+12*x1(j).^2+48*x2(i)-36*x1(j)*x2(i)+27*x2(i).^2);
        f(i)=u(i)*v(i);
    end
        
    f_tot(j,:)=f/(3*10^5);

end

Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,f_tot+0.2);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('GOLDSTEIN-PRICE FUNCTION');
% hold on
imagesc(x1,x2,z);

% f = imread ('GOLDSTEINPRICE.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);