% M (or Hyper-Grid) Function
% Range of initial points: 0 <= xj <= 1 , j=1,2,...,n
% It has c^n global minimum: xj=m*asin(1)/(c*pi) , m=1,3,5,...
% f(X)=-1
% Coded by: Ali R. Alroomi | Last Update: 17 August 2015 | www.al-roomi.org
    
clear
clc
warning off
    
alpha=6;
c=5; 
 
x1min=0;
x1max=1;
x2min=0;
x2max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=-sin(3*pi*x1(j))^alpha;
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=-0.5*(sin(c*pi*x1(j))^alpha+sin(c*pi*x2(i))^alpha);
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
% title('Hyper-Grid FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('HyperGrid.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);