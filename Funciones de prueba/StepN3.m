x1 = linspace(-100,100);

x2 = linspace(-100,100);

[X1,X2] = meshgrid(x1,x2);

Z = (abs(X1)^2)+(abs(X2)^2);

Min= min(Z,[],'all');
Max = max(Z,[],'all');

z=(Z-Min)/(Max-Min);
% % surf(Z);
% % title('EXPONENTIAL FUNCTION');
% % xlabel('x1');
% % ylabel('x2');
% % zlabel('f(x1,x2)');
% % hold on
imagesc(z)

f = imread ('STEPN3.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);