function[int, raiz, limites,error] = Secante(fun, a ,b, IntMax)
root = ones(1,IntMax);
fun = inline(fun);
TolY = 10^-3;
x = a:0.01:b;
y = fun(x);
figure;
plot(x,y,'r');
hold on;
grid;
int = 0;
% while 1
%     
%    if int>1
%        error = abs((root(int-1) - root(int))/root(int));
%        if error<TolY
%            break;
%        end
%    else
%        error = -1;
%    end
%    if int == IntMax
%        break;
%    end
%     raiz = root(int);
%     int = int+1;
% end