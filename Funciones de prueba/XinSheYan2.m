% Xin-She Yang's Function # 2
% Range of initial points: -10 <= xj <= 10 , j=1,2,...,n
% For n=1:
% Two global maximum: x=+-0.707106781903310
% f(x)=0.428881942480354 (determined by Maple 2015)
% For n=2:
% Four global maximum: (x1,x2)=(+-0.5,+-0.5)
% f(X)=1/sqrt(exp(1))=0.606530659712633
% Coded by: Ali R. Alroomi | Last Update: 12 August 2015 | www.al-roomi.org
 
% Although, there is one unique global minima at the origin, there are 
% infinite number of almost global minimum with so small errors 
% Thus, this function is not recommended to be used for minimization 
% unless inverting it by using f_new(X)=-f_old(X)

    
clear
clc
warning off
 
x1min=-10;
x1max=10;
x2min=-10;
x2max=10;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max; 
    
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=abs(x1(j))*exp(-x1(j)^2);
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=(abs(x1(j))+abs(x2(i)))*exp(-x1(j)^2-x2(i)^2);
    end
    
    fn_tot(j,:)=fn;
 
end
Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(fn_tot+0.5));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('XIN SHEN YANG N2 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('XinSheYan2.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);