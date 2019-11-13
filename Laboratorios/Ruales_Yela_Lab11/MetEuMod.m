function [xf,yf] =MetEuMod(funF,funX,funY, xi, yi, h , b)
xf = xi:h:b;
long =length(xf) ;
yf = zeros(long,1);
yf(1) = yi;
for i = 1: long -1
   yf(i+1) = ((yf(i) + h*funX(xf(i+1)))/(1 - funY*h) + yf(i) + h*funF(xf(i),yf(i)))/2;
end