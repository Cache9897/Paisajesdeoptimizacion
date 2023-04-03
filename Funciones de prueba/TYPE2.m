% Type-II Medium-Complex Deceptive Problem
% Range of initial points: 0 <= xj <= 1 , j=1,2,...,n
% Two global maximum: (x1,x2,...,xn)={0,1} "with (2^n)-1 local maximum"
% f(X)=1
% Coded by: Ali R. Alroomi | Last Update: 27 July 2015 | www.al-roomi.org
   
clear
clc
warning off
 
alpha=0.8;
beta=1;
Select1=round(rand);
Select2=round(rand);
 
x1min=0;
x1max=1;
x2min=0;
x2max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;
 
for j=1:length(x1)
    
    % For 1-dimensional plotting
    if Select1==0
        if x1(j)<=alpha
            g1=alpha-x1(j);
        else
            g1=(x1(j)-alpha)/(1-alpha);
        end
    else
        if x1(j)<(1-alpha)
            g1=(1-alpha-x1(j))/(1-alpha);
        else
            g1=x1(j)-1+alpha;
        end
    end
    
    f1(j)=g1^beta;
    
    % For 2-dimensional plotting
    if Select2==0
        for i=1:length(x2)
            
            if x2(i)<=alpha
                g2=alpha-x2(i);
            else
                g2=(x2(i)-alpha)/(1-alpha);
            end
 
            fn(i)=(0.5*(g1+g2))^beta;
 
        end 
    else
        for i=1:length(x2)
            
            if x2(i)<(1-alpha)
                g2=(1-alpha-x2(i))/(1-alpha);
            else
                g2=x2(i)-1+alpha;
            end
 
            fn(i)=(0.5*(g1+g2))^beta;
 
        end
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
% title('COMPLEX DECEPTIVE TYPE II FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('TYPE2.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);