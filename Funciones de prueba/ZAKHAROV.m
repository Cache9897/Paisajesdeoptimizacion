% Zakharov's Function
% Range of initial points: -5 <= xj <= 10 , j=1,2,...,n
% Global maxima: (x1,x2,...,xn)=0
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 03 June 2015 | www.al-roomi.org
  
clear
clc
warning off
 
x1min=-5;
x1max=10;
x2min=-5;
x2max=10;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=x1(j).^2+(0.5*x1(j)).^2+(0.5*x1(j)).^4;
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=(x1(j).^2+x2(i).^2)+((0.5*1*x1(j)+0.5*2*x2(i)).^2)+((0.5*1*x1(j)+0.5*2*x2(i)).^4);
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
% title('ZAKHAROV FUNCTION');
% hold on
imagesc(x1,x2,z);

f = imread ('ZAKHAROV.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);