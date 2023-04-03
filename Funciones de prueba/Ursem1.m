% Ursem Function # 1
% Range of initial points: -2.5 <= x1 <= 3 , -2 <= x2 <= 2
% Global minima: (x1,x2)=(1.697136443570341,0)
% f(x1,x2)=-4.816814063734823
% Coded by: Ali R. Alroomi | Last Update: 26 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-2.5;
x1max=3;
x2min=-2;
x2max=2;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=-sin(2*x1(j)-0.5*pi)-3*cos(x2(i))-0.5*x1(j);
    end
    
    f_tot(j,:)=f;

end

Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+5));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('URSEM N1 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Ursem1.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);