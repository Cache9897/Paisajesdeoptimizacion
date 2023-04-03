% Problem # 5 (or Basso's Function)
% Range of initial points: 0 <= x <= 1.2
% Global maxima: x=0.966085802901471
% f(x)=1.489072538689604
% Coded by: Ali R. Alroomi | Last Update: 14 Feb. 2015 | www.al-roomi.org
 
clear
clc
warning off
 
xmin=0;
xmax=1.2;
R=100000; % steps resolution
x=xmin:(xmax-xmin)/R:xmax; 
 
for i=1:length(x)
    f(i)=(1.4-3*x(i))*sin(18*x(i));
end

plot(x,f,'r','LineWidth',2);grid;set(gca,'FontSize',12);axis([0 1.2 -2.2 1.7]);
xlabel('x','FontName','Times','FontSize',20,'FontAngle','italic');
ylabel('f(x)','FontName','Times','FontSize',20,'FontAngle','italic');