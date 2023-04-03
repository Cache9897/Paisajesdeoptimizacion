% Generalized Rosenbrock's Valley (Banana or 2nd De Jong's) Function
% Range of initial points: -2.048 < xj < 2.048 , j=1,2,...,n
% Some papers take the range as: -5 <= xj <= 10 or -30 <= xj <= 30
% Global minima: (x1,x2,...,xn)=1
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 03 June 2015 | www.al-roomi.org  
 
clear
clc
warning off
     
x1min=-2.048;
x1max=2.048;
x2min=-2.048;
x2max=2.048;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
     
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=100*(x2(i)-x1(j)*x1(j)).^2+(1-x1(j)).^2;
    end
    
    f_tot(j,:)=f;
 
end 
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min); 

figure(1)
% surf(x1,x2,(f_tot+1000));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('NEEDLE EYE FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('needle.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);