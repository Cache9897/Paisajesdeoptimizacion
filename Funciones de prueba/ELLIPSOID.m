x1 = linspace(-65.536,65.536,1000);

x2 = linspace(-65.536,65.536,1000);

[X1,X2] = meshgrid(x1,x2);

Z = X1.^2+X2.^2;

Min= min(Z,[],'all');
Max = max(Z,[],'all');

z=(Z-Min)/(Max-Min);

% surf(Z);
% title('ROTATED HYPER-ELLIPSOID FUNCTION');
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% hold on
imagesc(z)

% f = imread ('ELLIPSOID.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);