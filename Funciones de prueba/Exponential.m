x1 = linspace(-1,1,100);

x2 = linspace(-1,1,100);

[X1,X2] = meshgrid(x1,x2);

Z = (-1*exp(-0.5*X1.^2))+(-1*exp(-0.5*X2.^2));

Min= min(Z,[],'all');
Max = max(Z,[],'all');

z=(Z-Min)/(Max-Min);

% surf(Z);
% title('EXPONENTIAL FUNCTION');
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% hold on
imagesc(z)
% 
% f = imread ('Exponential.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);
