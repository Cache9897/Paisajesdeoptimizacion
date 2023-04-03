% Generalized Griewank's Function 
% Range of initial points: -600 <= xj <= 600 , j=1,2,...,n
% Global minima: (x1,x2,...,xn)=0
% f(X)=0  
% Coded by: Ali R. Alroomi | Last Update: 04 June 2015 | www.al-roomi.org
    
clear
clc
warning off
    
x1min=-50;
x1max=50;
x2min=-50;
x2max=50;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=(x1(j)^2/4000)-cos(x1(j))+1;
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fsum(i)=x1(j)^2+x2(i)^2;
        fprod(i)=cos(x1(j)/sqrt(1))*cos(x2(i)/sqrt(2));
        fn(i)=(sum(fsum(i))/4000)-prod(fprod(i))+1;
    end
    
    fn_tot(j,:)=fn;
 
end

Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,fn_tot);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('GRIEWANK FUNCTION');
% hold on
imagesc(x1,x2,z);

% f = imread ('GRIEWANK.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);