% Deb's Function # 2
% Range of initial points: 0 <= xj <= 1 , j=1,2,...,n
% Many global minimum happen when each ith term of (5*pi*(xj^(3/4)-0.05)) 
% is equal to (m*pi/2), where m=1,3,5,7,9
% Thus, there are 10^n optimal points:
% For n=1: 5 optima when x=(m/10+0.05)^(4/3)
% For n=2: 25 optima when xj=(m/10+0.05)^(4/3)
% f(X)=-1
% Coded by: Ali R. Alroomi | Last Update: 27 July 2015 | www.al-roomi.org
    
clear
clc
warning off
 
x1min=0;
x1max=1;
x2min=0;
x2max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max; 
    
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=-(sin(5*pi*(x1(j)^(3/4)-0.05)))^6;
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=(-1/2)*((sin(5*pi*(x1(j)^(3/4)-0.05)))^6+(sin(5*pi*(x2(i)^(3/4)-0.05)))^6);
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
% title('DEB N3 FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('Deb4.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);