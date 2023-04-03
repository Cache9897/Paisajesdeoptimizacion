% Xin-She Yang's Function # 8
% Range of initial points: -10*pi <= xj <= 10*pi , j=1,2,...,n
% Global minima: xj=0
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 13 August 2015 | www.al-roomi.org
    
clear
clc
warning off
 
x1min=-10*pi;
x1max=10*pi;
x2min=-10*pi;
x2max=10*pi;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max; 
    
for j=1:length(x1)
    
    % For 1-dimensional plotting
    R1=rand;
    f1(j)=abs(1-exp(-R1*x1(j)^2))+R1*sin(2*pi*x1(j))^2;
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        Rn=rand(2,1);
        fn(i)=abs(1-exp(-Rn(1)*x1(j)^2-Rn(2)*x2(i)^2))+...
            Rn(1)*sin(2*pi*x1(j))^2+Rn(2)*sin(2*2*pi*x2(i))^2;
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
% title('XIN SHEN YANG N8 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('XinSheYan8.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);