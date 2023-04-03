% Csendes' (EX3 or Infinity) Function
% Range of initial points: -1 <= xj <= 1 , j=1,2,...,n
% Other proposed side constraints: -2 <= xj <= 2 
% Infinite number of global minimum happen if at least one element xj=0
% f(X)=0
% Coded by: Ali R. Alroomi | Last Update: 17 June 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-1;
x1max=1;
x2min=-1;
x2max=1;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    % For 1-dimensional plotting
    if x1(j)~=0
        f1(j)=(sin(1/x1(j))+2)*x1(j)^6;
    else
        f1(j)=0;
    end
    
    % For 2-dimensional plotting
    for i=1:length(x2)
        if x1(j)*x2(i)~=0
            fn(i)=f1(j)+(sin(1/x2(i))+2)*x2(i)^6;
        else
            fn(i)=0;
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
% title('CSENDES FUNCTION');
% hold on;
imagesc(x1,x2,z);

% f = imread ('CSENDES.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);