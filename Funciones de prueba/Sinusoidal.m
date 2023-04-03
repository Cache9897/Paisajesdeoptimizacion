% Sinusoidal Problem
% Range of initial points: 0 <= xj <= 180 "in degree", j=1,2,...,n
% Global maxima: xj=90+Z
% f(X)=-(A+1)
% Coded by: Ali R. Alroomi | Last Update: 04 June 2015 | www.al-roomi.org
 
clear
clc
warning off
 
A=2.5;
B=5;
Z=30;
 
x1min=0;
x1max=180;
x2min=0;
x2max=180;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=-A*sind(x1(j)-Z)-sind(B*(x1(j)-Z));
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=-A*(sind(x1(j)-Z)*sind(x2(i)-Z))-sind(B*(x1(j)-Z))*sind(B*(x2(i)-Z));
    end
    
    fn_tot(j,:)=fn;
 
end
Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(fn_tot+3));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('SINUSOIDAL FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Sinusoidal..jpg');
k = rgb2gray(f);
figure(2)
imshow(k);