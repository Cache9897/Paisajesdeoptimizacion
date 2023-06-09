% Carrom Table Function
% Range of initial points: -10 <= xj <= 10 , j=1,2 
% 4 global minimum: (x1,x2)=�9.646157266348881
% f(x1,x2)=-24.15681551650653
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
        f(i)=(-1/30)*exp(2*abs(1-(sqrt(x1(j).^2+x2(i).^2)/pi)))*((cos(x1(j))).^2)*((cos(x2(i))).^2);
    end
    
    f_tot(j,:)=f;

end

Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+25));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('CARROM TABLE FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('CarromTable.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);