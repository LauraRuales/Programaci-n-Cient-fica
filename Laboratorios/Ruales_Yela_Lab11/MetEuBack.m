function [xf,yf] =MetEuBack (funA,funB, xi, yi, h , b)
xf = xi:h:b;
long =length(xf) ;
yf = zeros(long,1);
yf(1) = yi;
for i = 1: long -1
   yf(i+1) = (yf(i) + h*funA(xf(i+1)))/(1 - funB*h);
end