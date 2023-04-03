% Beale's Function
% Range of initial points: -4.5 <= xj <= 4.5 , j=1,2
% Global minima: (x1,x2)=(3,0.5)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org 

clear
clc
warning off
    
x1min=-4.5;
x1max=4.5;
x2min=-4.5;
x2max=4.5;
R=100; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=((1.5-x1(j)+x1(j)*x2(i)).^2)+((2.25-x1(j)+x1(j)*x2(i).^2).^2)+((2.625-x1(j)+x1(j)*(x2(i).^3)).^2);
    end
        
    f_tot(j,:)=f;

end


Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,f_tot+1);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('BEALE FUNCTION');
% hold on
imagesc(x1,x2,z);

% f = imread ('BEALE.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);
