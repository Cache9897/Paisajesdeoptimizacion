% Lunacek's bi-Rastrigin Function
% Range of initial points: -5.12 <= xj <= 5.12 , j=1,2,...,n
% For n=1:
% Global minima: x1=mu1
% f(x)=0
% For n=2:
% Global minima: (x1,x2)=mu1
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 23 July 2015 | www.al-roomi.org
         
clear
clc
warning off
    
s_1=1-1/(2*sqrt(1+20)-8.2); % Or, it can be any float value between 0.2 and 1.4 as in the original reference
s_2=1-1/(2*sqrt(2+20)-8.2); 
d=1; % 1, 2, 3 or 4
mu1=2.5;
mu2_1=-sqrt((mu1^2-d)/s_1); % for 1-dimensional plotting
mu2_2=-sqrt((mu1^2-d)/s_2); % for 2-dimensional plotting
 
x1min=-5.12;
x1max=5.12;
x2min=-5.12;
x2max=5.12;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    f1(j)=min((x1(j)-mu1)^2,d*1+s_1*(x1(j)-mu2_1)^2)+10*(1-cos(2*pi*(x1(j)-mu1)));
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        fn(i)=min((x1(j)-mu1)^2+(x2(i)-mu1)^2,d*1+s_2*((x1(j)-mu2_2)^2+(x2(i)-mu2_2)^2))+10*((1-cos(2*pi*(x1(j)-mu1)))+(1-cos(2*pi*(x2(i)-mu1))));
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
% title('LUNACEK FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('LUNACEK.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);