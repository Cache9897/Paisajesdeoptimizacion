% Mishra's Function # 3
% Range of initial points: -10 <= xj <= 10 , j=1,2
% Best known solution: (x1,x2)=(8.466613775046579,-9.998521308999999)
% f(x1,x2)=-0.184651333342989
% Coded by: Ali R. Alroomi | Last Update: 26 May 2015 | www.al-roomi.org

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
        f(i)=abs(cos(sqrt(abs(x1(j).^2+x2(i))))).^0.5+(x1(j)+x2(i))/100;
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
% title('MISHRA N3 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Mishra3.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);