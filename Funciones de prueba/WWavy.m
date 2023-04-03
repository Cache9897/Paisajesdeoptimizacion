% W / Wavy Function
% Range of initial points: -pi <= xj <= pi , j=1,2,...,n
% Global minima: xj=0 with k^n local minima (for k odd) or (k+1)^n local
% minima (for k even)
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 17 August 2015 | www.al-roomi.org
    
clear
clc
warning off
 
k=10;
 
x1min=-pi;
x1max=pi;
x2min=-pi;
x2max=pi;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max; 
    
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=1-cos(k*x1(j))*exp(-x1(j)^2/2);
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=(1/2)*(1-cos(k*x1(j))*exp(-x1(j)^2/2)+...
            1-cos(k*x2(i))*exp(-x2(i)^2/2));
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
% title('W/WAVY FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('WWavy.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);