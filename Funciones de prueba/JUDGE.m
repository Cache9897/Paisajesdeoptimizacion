% Judge's Function
% Range of initial points: -10 <= xj <= 10 , j=1,2
% Best known global minima: (x1,x2)=(0.864787285816574,1.235748499036571)
% f(x1,x2)=16.081730132960381
% Coded by: Ali R. Alroomi | Last Update: 18 May 2015 | www.al-roomi.org

clear
clc
warning off

x1min=-2;
x1max=2;
x2min=-2;
x2max=2;
R=1500; % steps resolution
x1=x1min:(x1max-x1min)/R:x1max;
x2=x2min:(x2max-x2min)/R:x2max;

% constant vectors
A=[4.284,4.149,3.877,0.533,2.211,2.389,2.145,3.231,1.998,1.379,2.106,1.428,1.011,2.179,2.858,1.388,1.651,1.593,1.046,2.152];
B=[0.286,0.973,0.384,0.276,0.973,0.543,0.957,0.948,0.543,0.797,0.936,0.889,0.006,0.828,0.399,0.617,0.939,0.784,0.072,0.889];
C=[0.645,0.585,0.310,0.058,0.455,0.779,0.259,0.202,0.028,0.099,0.142,0.296,0.175,0.180,0.842,0.039,0.103,0.620,0.158,0.704];

for j=1:length(x1)
    
    for i=1:length(x2)
        
        for k=1:20
            fk(k)=((x1(j)+B(k)*x2(i)+C(k)*x2(i).^2)-A(k)).^2;
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
% title('JUDGE FUNCTION');
% hold on;
imagesc(x1,x2,z);

f = imread ('JUDGE.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);