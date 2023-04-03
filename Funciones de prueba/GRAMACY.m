% Gramacy-Lee's Function # 3
% Range of initial points: -1.5 <= xj <= 1.5 , j=1,2 
% Global minima: (x1,x2)=-1.040825908416920
% f(x1,x2)=-1.126871745786324 (determined by Maple 2015)
% Coded by: Ali R. Alroomi | Last Update: 11 August 2015 | www.al-roomi.org
 
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
    
    f1=exp(-(x1(j)-1)^2)+exp(-0.8*(x1(j)+1)^2)-0.05*sin(8*(x1(j)+0.1));
    
    for i=1:length(x2)
        f2=exp(-(x2(i)-1)^2)+exp(-0.8*(x2(i)+1)^2)-0.05*sin(8*(x2(i)+0.1));
        f(i)=-f1*f2;
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
% title('GRAMACY-LEE N3 FUNCTION');
% hold on;
imagesc(x1,x2,z);
% 
% f = imread ('GRAMACY.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);