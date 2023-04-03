% Biggs' EXP2 Function
% Range of initial points: 0 <= xj <= 20 , j=1,2 
% Global minima: (x1,x2)=(1,10)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=0;
x1max=20;
x2min=0;
x2max=20;
R=100; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        
        for k=0:9
            fi(k+1)=(exp(-k*x1(j)/10)-5*exp(-k*x2(i)/10)-exp(-k/10)+5*exp(-k)).^2;
        end
        
        f(i)=sum(fi);
    
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
% title('BIGGS EXP2 FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('BiggsEXP2.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);
