% Ackley's Function (sometimes called: Ackley's Function # 1 or Ackley's Path Function)
% Range of initial points: -32 <= xj <= 32 , j=1,2,...,n
% Global minima: (x1,x2,...,xn)=0
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 22 July 2015 | www.al-roomi.org
         
clear
clc
warning off
    
x1min=-32;
x1max=32;
x2min=-32;
x2max=32;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;


for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=-20*exp(-0.2*sqrt(x1(j)^2))-exp(cos(2*pi*x1(j)))+20+exp(1);
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=-20*exp(-0.2*sqrt((1/2)*sum(x1(j)^2+x2(i)^2)))-exp((1/2)*sum(cos(2*pi*x1(j))+cos(2*pi*x2(i))))+20+exp(1);
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
% title('ACKLEY 1 FUNCTION');
% hold on
imagesc(x1,x2,z);


% f = imread ('Ackley.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);
