function [raiz,int,error] = Newton_Raphson(fun, a, IntMax)
root = ones(1,IntMax);
fun2 = inline(diff(fun));
fun = inline(fun);
int = 1;
TolY = 10^-10;
x = -300:1:300;
y = fun(x);
figure;
plot(x,y,'r');
hold on;
grid;
while 1
    pendiente = fun2(a);
    intercepto = fun(a) - pendiente*a;    
    plot(a,fun(a),'.');
    pause(1)
    plot([0 a], [ intercepto fun(a)]);
    pause(1)
    Fun_Pend = @(x) pendiente* x + intercepto;
    b = -intercepto/pendiente;
    plot(b,Fun_Pend(b),'.');
    root(int) = b;    
    a = b;
   if int>1
       error = abs((root(int-1) - root(int))/root(int-1));
       if error<TolY
           break;
       end
   else
       error = -1;
   end
   if int == IntMax
       break;
   end
    raiz = root(int);
    int = int+1;
end