% Keane's Function
% Range of initial points: 0 <= xj <= 10 , j=1,2
% Best known two global minimum: (x1,x2)=(0,1.393249070031784),(1.393249070031784,0)
% f(x1,x2)=-0.673667521146855
% Coded by: Ali R. Alroomi | Last Update: 18 May 2015 | www.al-roomi.org

clear
clc
warning off

x1min=0;
x1max=10;
x2min=0;
x2max=10;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)    
        f(i)=-((sin(x1(j)-x2(i))).^2)*((sin(x1(j)+x2(i))).^2)/sqrt(x1(j).^2+x2(i).^2);   
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
% title('KEANE FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Keane.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);