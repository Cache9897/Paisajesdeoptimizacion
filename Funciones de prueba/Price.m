x1 = linspace(-10,10,1000);

x2 = linspace(-10,10,1000);

[X1,X2] = meshgrid(x1,x2);

Z = 1+(sin(X1).^2)+(sin(X2).^2)-0.1*exp(-(X1).^2-(X2).^2);
Min= min(Z,[],'all');
Max = max(Z,[],'all');

z=(Z-Min)/(Max-Min);
% surf(Z);
% title('PRICE 2 FUNCTION');
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% hold on
imagesc(z)

f = imread ('Price.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);
