% Modified Schaffer's Function # 2
% Range of initial points: -100 <= xj <= 100 , j=1,2
% Some papers, range of initial points: -10 <= xj <= 10 , j=1,2
% Global minima: (x1,x2)=(0,0)
% f(x1,x2)=0
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

% The correct equation is taken from:
% http://mpra.ub.uni-muenchen.de/2718/1/MPRA_paper_2718.pdf 

clear
clc
warning off
    
x1min=-10;
x1max=10;
x2min=-10;
x2max=10;
R=600; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;   
    
for j=1:length(x1)
        
    for i=1:length(x2)
        f(i)=0.5+(((sin(x1(j).^2-x2(i).^2)).^2-0.5)/(1+0.001*(x1(j).^2+x2(i).^2)).^2);                           
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
% title('SCHAFFER N2 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('SCHAFFER2.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);