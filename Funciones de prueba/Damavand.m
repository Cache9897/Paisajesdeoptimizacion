% Damavandi's Function
% Range of initial points: 0 <= xj <= 14 , j=1,2
% Global minima: (x1,x2)=(2,2)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 12 May 2015 | www.al-roomi.org

clear
clc
warning off
    
x1min=0;
x1max=14;
x2min=0;
x2max=14;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(1-(abs((sin(pi*(x1(j)-2))*sin(pi*(x2(i)-2)))/(pi*pi*(x1(j)-2)*(x2(i)-2)))).^5)*(2+(x1(j)-7).^2+2*(x2(i)-7).^2);
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
% title('DAMAVANDI FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('Damavand.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);