% Zettl's Function
% Range of initial points: -1 <= xj <= 5 , j=1,2 
% Global minima: (x1,x2)=(-0.02989597760285287,0)
% f(x1,x2)=-0.003791237220468656
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-1;
x1max=5;
x2min=-1;
x2max=5;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=0.25*x1(j)+(x1(j).^2-2*x1(j)+x2(i).^2).^2;
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
% title('ZETTL FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Zettl.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);