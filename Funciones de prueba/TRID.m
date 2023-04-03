% Neumaier's Function # 3 (or Trid's Function)
% Range of initial points: -n^2 <= xj <= n^2 , j=1,2,...,n
% Global minima: xj=j(n+1-j);
% f(X)=-n(n+4)(n-1)/6 >> for example: if n=15, then fmin=-665
% Coded by: Ali R. Alroomi | Last Update: 06 August 2015 | www.al-roomi.org
    
clear
clc
warning off
    
x1min=-15^2;
x1max=15^2;
x2min=-15^2;
x2max=15^2;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(x1(j)-1)^2+(x2(i)-1)^2-x1(j)*x2(i);
    end
    
    f_tot(j,:)=f;
 
end 
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,f_tot);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('TRID FUNCTION');
% hold on
imagesc(x1,x2,z);

f = imread ('TRID.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);