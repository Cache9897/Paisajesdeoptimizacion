% Ursem-Waves Function
% Range of initial points: -0.9 <= x1 <= 1.2 , -1.2 <= x2 <= 1.2
% Best known solution: (x1,x2)=(-0.605689494589848,-1.177561933039789)
% f(x1,x2)=-7.306998731324462
% Coded by: Ali R. Alroomi | Last Update: 29 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-0.9;
x1max=1.2;
x2min=-1.2;
x2max=1.2;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=-(0.3*x1(j)).^3+(x2(i).^2-4.5*x2(i).^2)*x1(j)*x2(i)+4.7*cos(3*x1(j)-(x2(i).^2)*(2+x1(j)))*sin(2.5*pi*x1(j));
    end
    
    f_tot(j,:)=f;

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+10));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('URSEM WAVES FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('UrsemWaves.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);