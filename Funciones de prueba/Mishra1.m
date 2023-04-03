% Mishra's Function # 1
% Range of initial points: 0 <= xj <= 1 , j=1,2,...,n
% Global minima: xj=1
% f(X)=2
% Coded by: Ali R. Alroomi | Last Update: 04 June 2015 | www.al-roomi.org
     
clear
clc
warning off
 
x1min=0;
x1max=1;
x2min=0;
x2max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max; 
 
for j=1:length(x1)
    
    for i=1:length(x2)
        gn=3-x1(j)-x2(i);
        f(i)=(1+gn)^gn;
    end
    
    f_tot(j,:)=f;
 
end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,f_tot+2);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('MISHRA 1 FUNCTION');
% hold on
imagesc(x1,x2,z);

f = imread ('Mishra1.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);