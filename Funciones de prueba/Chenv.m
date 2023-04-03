% Chen's Bird Function
% Range of initial points: -500 <= xj <= 500 , j=1,2
% Global maxima: (x1,x2)=(0.5,0.5)
% f(x1,x2)=2000.003999984000
% Coded by: Ali R. Alroomi | Last Update: 30 March 2015 | www.al-roomi.org

clear
clc
warning off
    
x1min=-1.5;
x1max=1;
x2min=-1.5;
x2max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

b=0.001;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(b/(b.^2+(x1(j).^2+x2(i).^2-1).^2))+(b/(b.^2+(x1(j).^2+x2(i).^2-0.5).^2))+(b/(b.^2+(x1(j)-x2(i)).^2));
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
% title('CHEN V FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('Chenv.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);