% Muller-Brown's Surface Function
% Range of initial points: -1.5 <= x1 <= 1 , -0.5 <= x2 <= 2.5
% Global minima: (x1,x2)=(-0.558223638251928,1.441725828290487)
% f(x1,x2)=-146.6995172099539
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off
    
x1min=-1.5;
x1max=1;
x2min=-0.5;
x2max=2.5;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i) =   ((-200)*exp( (  -1)*((x1(j)-  1).^2) +   0*((x1(j)-  1).*(x2(i)-  0))  + ( -10)*((x2(i) -   0).^2) ) ...
                  + (-100)*exp( (  -1)*((x1(j)-  0).^2) +   0*((x1(j)-  0).*(x2(i)-0.5))  + ( -10)*((x2(i) - 0.5).^2) ) ...
                  + (-170)*exp( (-6.5)*((x1(j)+0.5).^2) +  11*((x1(j)+0.5).*(x2(i)-1.5))  + (-6.5)*((x2(i) - 1.5).^2) ) ...
                  + (  15)*exp( ( 0.7)*((x1(j)+  1).^2) + 0.6*((x1(j)+  1).*(x2(i)-  1))  + ( 0.7)*((x2(i) -   1).^2) ));
    end
    
    f_tot(j,:)=f;

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+1000));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('MULLER-BROWN FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('MULLER.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);