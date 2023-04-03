% Vincent's Function
% Range of initial points: 0.25 <= xj <= 10 , j=1,2,...,n
% It has 6^n global minimum: xj=asin(1)/10 , m=1,5,9,...
% f(X)=-1
% Coded by: Ali R. Alroomi | Last Update: 17 August 2015 | www.al-roomi.org
    
clear
clc
warning off
 
x1min=0.25;
x1max=10;
x2min=0.25;
x2max=10;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=-sin(10*log(x1(j)));
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=-0.5*(sin(10*log(x1(j)))+sin(10*log(x2(i))));
    end
    
    fn_tot(j,:)=fn;
 
end
Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(fn_tot+2));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('VICENT FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('VICENT.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);