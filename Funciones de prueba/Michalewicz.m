% Michalewicz's Function
% Range of initial points: 0 < xj < pi , j=1,2,...,n
% For n=1:
% Global minima: x=2.20290552017261
% f(x)=-0.801303410098552549 (determined by Maple 2015)
% For n=2:
% Global minima: (x1,x2)=(2.20290552014618,1.57079632677565)
% f(x1,x2)=-1.80130341009855321 (determined by Maple 2015)
% Coded by: Ali R. Alroomi | Last Update: 22 June 2015 | www.al-roomi.org     
    
clear
clc
warning off
    
m=10;
 
x1min=0;
x1max=pi;
x2min=0;
x2max=pi;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
        
    % For 1-dimensional plotting
    f1(j)=-sin(x1(j))*(sin(1*x1(j).^2/pi)).^(2*m);
    
    % For 2-dimensional plotting
    for i=1:length(x2)            
        f(i)=-sin(x1(j))*(sin(1*x1(j).^2/pi)).^(2*m)-sin(x2(i))*(sin(2*x2(i).^2/pi)).^(2*m);
    end
        
    fn_tot(j,:)=f;
 
end
Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,fn_tot);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('MICHALEWICZ FUNCTION');
% hold on
imagesc(x1,x2,z);

f = imread ('Michalewicz.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);