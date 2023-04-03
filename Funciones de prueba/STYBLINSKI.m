x1 = linspace(-5,5);

x2 = linspace(-5,5);

[X1,X2] = meshgrid(x1,x2);

Z = 0.5*((X1.^4-16*X1.^2+5*X1)+((X2.^4-16*X2.^2+5*X2)));
Min= min(Z,[],'all');
Max = max(Z,[],'all');

z=(Z-Min)/(Max-Min);

% surf(Z+100);
% title('STYBLINSKI-TANG FUNCTION');
% xlabel('x1');
% ylabel('x2');
% zlabel('f(x1,x2)');
% hold on
imagesc(z)

f = imread ('STYBLINSKI.jpg');
k = rgb2gray(f);
figure(2)
imshow(k);