x1 = linspace(-10,10);

x2 = linspace(-10,10);

[X1,X2] = meshgrid(x1,x2);

Z = 10*sin(3*sqrt(X1.^2+X2.^2))*exp(-sqrt(((X1+1).^2)+(X2-1).^2));

Min= min(Z,[],'all');
Max = max(Z,[],'all');

z=(Z-Min)/(Max-Min);

% surf(Z);
% title('BASICS FUNCTION');
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% hold on
imagesc(z)

% f = imread ('Basica.jpg');
% k = rgb2gray(f);
% figure(2)
% imshow(k);

