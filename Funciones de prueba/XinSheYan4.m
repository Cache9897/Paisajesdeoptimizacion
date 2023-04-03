% Xin-She Yang's Function # 4
% Range of initial points: 0 <= xj <= K , j=1,2
% Global minima: (x1,x2)=(pi,pi)
% f(X) is a random optima >> could be located between (-K^2+5) and -5
% Coded by: Ali R. Alroomi | Last Update: 12 August 2015 | www.al-roomi.org
    
clear
clc
warning off
 
alpha=1; % scaling parameter (>0)
beta=1; % scaling parameter (>0)
K=10; % controllable upper bound
% rng('default')  % for reproducibility
U=rand(K,K); % uniform distribution
 
x1min=0;
x1max=K;
x2min=0;
x2max=K;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max; 
    
for j=1:length(x1)
    
    for i=1:length(x2)
        
        for s=1:K
 
            for z=1:K
                In(z)=U(s,z)*exp(-alpha*((x1(j)-z)^2+(x2(i)-s)^2));   
            end
            Out(s)=sum(In);
        end
        
        f(i)=-5*exp(-beta*((x1(j)-pi)^2+(x2(i)-pi)^2))-sum(Out);
 
    end
    
    f_tot(j,:)=f;
 
end 
Min= min(f_tot,[],'all');
Max = max(f_tot,[],'all');

z=(f_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(f_tot+8));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('XIN SHEN YANG N4 FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('XinSheYan4.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);