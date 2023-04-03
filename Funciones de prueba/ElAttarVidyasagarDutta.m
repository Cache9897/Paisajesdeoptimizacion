% El-Attar-Vidyasagar-Dutta's Function
% Range of initial points: -500 <= xj <= 500 , j=1,2
% Global minima: (x1,x2)=(3.4091868222,-2.1714330361)
% f(x1,x2)=1.712780354862198
% Coded by: Ali R. Alroomi | Last Update: 13 May 2015 | www.al-roomi.org

clear
clc
warning off
    
x1min=-4;
x1max=4;
x2min=-4;
x2max=4;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(x1(j).^2+x2(i)-10).^2+(x1(j)+x2(i).^2-7).^2+(x1(j).^2+x2(i).^3-1).^2;
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
% title('EL-ATTAR-VIDYASAGAR-DUTTA FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('ElAttarVidyasagarDutta.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);