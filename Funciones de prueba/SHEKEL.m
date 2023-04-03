% Shekel's Foxholes Function 
% Range of initial points: -65.536 <= xj <= 65.536 , j=1,2
% Global minima: (x1,x2)=(-31.97833,-31.97833)
% f(x1,x2)=0.998003837794449325873406851315
% Coded by: Ali R. Alroomi | Last Update: 24 March 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-65.536;
x1max=65.536;
x2min=-65.536;
x2max=65.536;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

a=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;-32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32];    
    
for j=1:length(x1)
        
    for i=1:length(x2)
                      
        for k=1:25
            Fk(k)=1/(k+(x1(j)-a(1,k)).^6+(x2(i)-a(2,k)).^6);
        end 
        
        Fs=sum(Fk);
        f(i)=((1/500)+Fs).^(-1);
        
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
% title('SHEKEL FOXHOLES FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('SHEKEL.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);