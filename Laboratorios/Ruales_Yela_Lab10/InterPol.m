function [ind, dep] = InterPol (x, y)
Mat = zeros(length(x),length(x));
for i=1:length(x)
    for j=1:length(x)
    Mat(i,j)= x(i)^(length(x)-j);
    end
end
coef = inv(Mat)*y;
ind = x(1):0.001:x(end);
dep = zeros(length(ind),1);
for count=1:numel(ind)
    for colcount = 1:size(coef, 1)
        dep(count) = dep(count) + coef(colcount) * ind(count).^ (numel(coef) - colcount);
    end
end