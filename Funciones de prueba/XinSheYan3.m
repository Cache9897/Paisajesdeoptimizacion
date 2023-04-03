% Xin-She Yang's Function # 3
% Range of initial points: -2*pi <= xj <= 2*pi , j=1,2,...,n
% Global minima: (x1,x2,...,xn)=0
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 12 August 2015 | www.al-roomi.org
    
clear
clc
warning off
 
x1min=-2*pi;
x1max=2*pi;
x2min=-2*pi;
x2max=2*pi;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max; 
    
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=abs(x1(j))*exp(-sin(x1(j)^2));
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=(abs(x1(j))+abs(x2(i)))*exp(-sin(x1(j)^2)-sin(x2(i)^2));
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
% title('XIN SHEN YANG N3 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('XinSheYan3.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);