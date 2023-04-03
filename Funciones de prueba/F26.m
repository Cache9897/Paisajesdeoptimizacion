% F26 Function
% Range of initial points: -10 <= xj <= 10 , j=1,2
% Global minima: (x1,x2)=(1.046680526600663,0)
% f(x1,x2)=?0.352386073800037
% Coded by: Ali R. Alroomi | Last Update: 09 August 2015 | www.al-roomi.org
  
clear
clc
warning off
 
x1min=-1.5;
x1max=1.5;
x2min=-1.5;
x2max=1.5;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=0.25*x1(j).^4-0.5*x1(j).^2-0.1*x1(j)+0.5*x2(i).^2;
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
% title('F26 FUNCTION');
% hold on;
imagesc(x1,x2,z);
% 
% f = imread ('F26.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);