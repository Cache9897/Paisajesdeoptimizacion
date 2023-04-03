% Xin-She Yang's Function # 7
% Range of initial points: -5 <= xj <= 5 , j=1,2,...,n
% Global minima: xj=1/j
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 13 August 2015 | www.al-roomi.org
    
clear
clc
warning off
 
x1min=-5;
x1max=5;
x2min=-5;
x2max=5;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max; 
    
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=rand*abs(x1(j)-1);
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=f1(j)+rand*abs(x2(i)-1/2)^2;
    end
    
    fn_tot(j,:)=fn;
 
end
Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(fn_tot));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('XIN SHEN YANG N7 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('XinSheYan7.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);