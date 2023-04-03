% Quadratic Function
% Range of initial points: -10 <= xj <= 10 , j=1,2 
% Global minima: (x1,x2)=(0.193880169366971,0.485133920218833)
% f(x1,x2)=-3873.724182186271819
% Coded by: Ali R. Alroomi | Last Update: 15 June 2015 | www.al-roomi.org

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
    
    for i=1:length(x2)
        f(i)=-3803.84-138.08*x1(j)-232.92*x2(i)+128.08*x1(j).^2+203.64*x2(i).^2+182.25*x1(j)*x2(i);
    end

    f_tot(j,:)=f;

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+10000));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('QUADRATIC FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Quadratic.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);