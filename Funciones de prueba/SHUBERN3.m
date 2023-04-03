% Problem # 3 (Shubert's, Trigonometric Polynomial, or Suharev-Zilinskas' Function)
% Range of initial points: -10 <= x <= 10
% It has three global maximum: x={-6.77457614347361, -0.491390835930674,
% 5.79179447080188}
% f(x)=12.031249442167146
% Coded by: Ali R. Alroomi | Last Update: 04 March 2015 | www.al-roomi.org

clear
clc
warning off

xmin=-10;
xmax=10;
R=100000; % steps resolution
x=xmin:(xmax-xmin)/R:xmax;

for i=1:length(x)
    
    for j=1:5
        fs(j)=j*sin((j+1)*x(i)+j);
    end
    
    f(i)=sum(fs);

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(2)
surf(x1,x2,f);
xlabel('x1');
ylabel('x2');
zlabel('f(x1,x2)');
title('SHUBERT N3 FUNCTION');
hold on;
imagesc(x1,x2,f);