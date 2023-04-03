% Storn's Function
% Range of initial points: min <= xj <= max , j=1,2
% It has two global minimum: 
% @ min=-2 and max=2: (x1,x2)=(0,-1.386952327146511),(0,1.386952327146511) >> m=1 and f(x1,x2)=-0.407461605632581
% @ min=-4 and max=4: (x1,x2)=(0,-2.608906424592038),(0,2.608906424592038) >> m=2 and f(x1,x2)=-18.058696657349238
% @ min=-8 and max=8: (x1,x2)=(0,-4.701739810796703),(0,4.701739810796703) >> m=3 and f(x1,x2)=-227.7657499670953
% Coded by: Ali R. Alroomi | Last Update: 23 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-2; % it can also be -4 or -8
x1max=2; % it can also be 4 or 8
x2min=-2; % it can also be -4 or -8
x2max=2; % it can also be 4 or 8
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

m=1; % it can also be 2 or 3
    
for j=1:length(x1)
    
    for i=1:length(x2)
        f(i)=(10.^m)*x1(j).^2+x2(i).^2-(x1(j).^2+x2(i).^2).^2+(10.^-m)*(x1(j).^2+x2(i).^2).^4;
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
% title('STORN FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('STORN.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);