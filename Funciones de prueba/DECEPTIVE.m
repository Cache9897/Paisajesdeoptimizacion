% Type-III Complex Deceptive Problem
% Range of initial points: 0 <= xj <= 1 , j=1,2,...,n
% Global maxima: xj=alphaj "with (3^n)-1 local maximum"
% f(X)=1
% Coded by: Ali R. Alroomi | Last Update: 28 July 2015 | www.al-roomi.org
   
clear
clc
warning off
 
alpha1=rand;
alpha2=rand;
while alpha1*alpha2==0 || alpha1==1 || alpha2==1
    if alpha1==0 || alpha1==1
        alpha1=rand;
    elseif alpha2==0 || alpha2==1
        alpha2=rand; 
    end
end
beta=1;
 
x1min=0;
x1max=1;
x2min=0;
x2max=1;
R=500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    % For 1-dimensional plotting
    if x1(j) < (4/5)*alpha1
        g1=-x1(j)/alpha1+4/5;
    elseif x1(j) >= 4*alpha1/5 && x1(j) < alpha1
        g1=5*x1(j)/alpha1-4;
    elseif x1(j) >= alpha1 && x1(j) < (1+4*alpha1)/5
        g1=(5*(x1(j)-alpha1))/(alpha1-1)+1;
    elseif x1(j) >= (1+4*alpha1)/5 && x1(j) <= 1
        g1=(x1(j)-1)/(1-alpha1)+4/5;
    end
    
    f1(j)=g1^beta;
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        
        if x2(i) < (4/5)*alpha2
            g2=-x2(i)/alpha2+4/5;
        elseif x2(i) >= 4*alpha2/5 && x2(i) < alpha2
            g2=5*x2(i)/alpha2-4;
        elseif x2(i) >= alpha2 && x2(i) < (1+4*alpha2)/5
            g2=(5*(x2(i)-alpha2))/(alpha2-1)+1;
        elseif x2(i) >= (1+4*alpha2)/5 && x2(i) <= 1
            g2=(x2(i)-1)/(1-alpha2)+4/5;
        end
        
        fn(i)=(0.5*(g1+g2))^beta;
    
    end 
 
    fn_tot(j,:)=fn;
 
end

Min= min(fn_tot,[],'all');
Max = max(fn_tot,[],'all');

z=(fn_tot-Min)/(Max-Min);

figure(1)
% surf(x1,x2,(fn_tot));
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% title('COMPLEX DECEPTIVE TYPE III FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('DECEPTIVE.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);