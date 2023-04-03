% Jennrich-Sampson's Function
% Range of initial points: -1 <= xj <= 1 , j=1,2
% Best known global minima: (x1,x2)=(0.25782521321500883,0.25782521381356827)
% f(x1,x2)=124.36218235561473896
% Coded by: Ali R. Alroomi | Last Update: 18 May 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-1;
x1max=0.35;
x2min=-1;
x2max=0.35;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

for j=1:length(x1)
    
    for i=1:length(x2)
        
        for k=1:10
            fk(k)=(2+2*k-(exp(k*x1(j))+exp(k*x2(i)))).^2;
        end
        
        f(i)=sum(fk);
        
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
% title('JENNRICH-SAMPSON FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('JennrichSampson.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);