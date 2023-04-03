% Mishra's Function # 5
% Range of initial points: -10 <= xj <= 10 , j=1,2
% Best known solution: (x1,x2)=(-1.986820662153768,-10)
% f(x1,x2)=-1.019829519930943
% Coded by: Ali R. Alroomi | Last Update: 06 June 2015 | www.al-roomi.org

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
        f(i)=((sin((cos(x1(j))+cos(x2(i))).^2)).^2+(cos((sin(x1(j))+sin(x2(i))).^2)).^2+x1(j)).^2+0.01*(x1(j)+10*x2(i));
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
% title('MISHRA N5 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Mishra5.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);