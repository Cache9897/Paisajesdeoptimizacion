


x1 = linspace(-500,500,500);

x2 = linspace(-500,500,500);

[X1,X2] = meshgrid(x1,x2);

Z = (-1* X1.*sin(sqrt(abs(X1)))) + (-1*X2.* sin(sqrt(abs(X2))));

Min= min(Z,[],'all');
Max = max(Z,[],'all');

z=(Z-Min)/(Max-Min);

%surf(Z);
% title('SCHWEFEL FUNCTION');
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% hold on
imagesc(z)

f = imread ('schwelfe.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);




%image(Z,'CDataMapping','scaled');
 