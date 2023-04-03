% Deflected Corrugated Spring Function
% Range of initial points: 0 <= xj <= 2*alpha , j=1,2,...,n
% Global minima: (x1,x2,...,xn)=alpha
% f(X)=-1
% Coded by: Ali R. Alroomi | Last Update: 15 June 2015 | www.al-roomi.org
 
clear
clc
warning off
    
alpha=5;
k=5;
    
x1min=0;
x1max=2*alpha;
x2min=0;
x2max=2*alpha;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=0.1*(x1(j)-alpha)^2-cos(k*(x1(j)-alpha)^2);
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        SqSum=sqrt((x1(j)-alpha)^2+(x2(i)-alpha)^2);
        fn(i)=0.1*SqSum^2-cos(k*SqSum);
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
% title('DEFLECTED FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('DEFLECRED.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);