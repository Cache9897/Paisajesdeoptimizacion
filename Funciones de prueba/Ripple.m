x1 = linspace(-10,10);

x2 = linspace(-10,10);

[X1,X2] = meshgrid(x1,x2);

Z = ((-1*exp(-2*log((X1-0.1)/0.8).^2))*sin(5*X1.*pi).^6)+((-1*exp(-2*log((X2-0.1)/0.8).^2))*sin(5*X2.*pi).^6);

surf(Z);
title('SCHWEFEL FUNCTION');
xlabel('x1');
ylabel('x2');
zlabel('f(x1,x2)');
hold on
imagesc(Z)



%image(Z,'CDataMapping','scaled');
 