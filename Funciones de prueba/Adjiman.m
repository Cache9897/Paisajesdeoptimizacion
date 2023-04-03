% Adjiman's Function
% Range of initial points: -5 <= xj <= 5 , j=1,2
% Some references: -1 <= x1 <= 2 , -1 <= x2 <= 1 "different global minima"
% Global minima: (x1,x2)=(5,0)
% f(x1,x2)=-5
% Coded by: Ali R. Alroomi | Last Update: 11 May 2015 | www.al-roomi.org

clear
clc
warning off
    
x1min=-5;
x1max=5;
x2min=-5;
x2max=5;
R=100; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=cos(x1(j))*sin(x2(i))-x1(j)/(1+x2(i).^2);
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
% title('ADJIMAN FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('Adjiman.jpg');
% k = rgb2gray(f);
% figure(3)
% imshow(k);