% Cosine Mixture Function
% Range of initial points: -1 <= xj <= 1 , j=1,2,...,n
% Global maxima: (x1,x2,...,xn)=0
% f(X)=0.1 for n=1 , f(X)=0.2 for n=2 , f(X)=0.3 for n=3 & f(X)=0.4 for n=4 
% It seems that the global mixima is equal to (n/10). But this is not true,
% because when n is large the global maxima will drift from (n/10)
% Coded by: Ali R. Alroomi | Last Update: 03 June 2015 | www.al-roomi.org
  
clear
clc
warning off

x1min=-1;
x1max=1;
x2min=-1;
x2max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=0.1*cos(5*pi*x1(j))-x1(j)^2;
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fa(i)=0.1*cos(5*pi*x1(j))+0.1*cos(5*pi*x2(i));
        fb(i)=x1(j)^2+x2(i)^2;
        fn(i)=fa(i)-fb(i);
    end
    
    fn_tot(j,:)=fn;

end

Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,fn_tot+3);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('COSINE MIXTURE FUNCTION');
% hold on
imagesc(x1,x2,z);

% f = imread ('Cosine.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);