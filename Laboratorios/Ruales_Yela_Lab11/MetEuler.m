function [xf,yf] =MetEuler (fun, xi, yi, h , b)
xf = xi:h:b;
long =length(xf) ;
yf = zeros(long,1);
yf(1) = yi;
for i = 1: long -1
   yf(i+1) = yf(i) + h*fun(xf(i),yf(i));
end