% Quintic Function
% Range of initial points: -10 <= xj <= 10 , j=1,2,...,n
% Two global minimum: (x1,x2,...,xn)={-1,2}
% f(X)=0  
% Coded by: Ali R. Alroomi | Last Update: 10 May 2014 | www.al-roomi.org
 
clear
clc
warning off
 
x1min=-2;
x1max=2;
x2min=-2;
x2max=2;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=abs(x1(j)^5-3*x1(j)^4+4*x1(j)^3+2*x1(j)^2-10*x1(j)-4);
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=abs(x1(j)^5-3*x1(j)^4+4*x1(j)^3+2*x1(j)^2-10*x1(j)-4)+abs(x2(i)^5-3*x2(i)^4+4*x2(i)^3+2*x2(i)^2-10*x2(i)-4);
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
% title('QUINTIC FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Quintic.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);
