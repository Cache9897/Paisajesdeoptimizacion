% Tripod Function
% Range of initial points: -100 <= xj <= 100 , j=1,2 
% Global minima: (x1,x2)=(0,-50)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-100;
x1max=100;
x2min=-100;
x2max=100;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        
        if x1(j)>=0
            p1=1;
        else
            p1=0;
        end
        
        if x2(i)>=0
            p2=1;
        else
            p2=0;
        end
        
        f(i)=p2*(1+p1)+abs(x1(j)+50*p2*(1-2*p1))+abs(x2(i)+50*(1-2*p2));
    end

    f_tot(j,:)=f;

end
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('TRIPOD FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('Tripod.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);