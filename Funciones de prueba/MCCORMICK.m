% McCormick's Function
% Range of initial points: -1.5 <= x1 <= 4 , -3 <= x1 <= 4 
% Global minima: (x1,x2)=(-0.5471975602214493,-1.547197559268372)
% f(x1,x2)=-1.913222954981037
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-1.5;
x1max=4;
x2min=-3;
x2max=4;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=-1.5*x1(j)+2.5*x2(i)+(x1(j)-x2(i)).^2+sin(x1(j)+x2(i))+1;
    end
    
    f_tot(j,:)=f;

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,f_tot+3);
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('MCCORMICK FUNCTION');
% hold on
imagesc(x1,x2,z);

f = imread ('MCCORMICK.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);