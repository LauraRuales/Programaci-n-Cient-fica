function [raiz,error] = Punto_Fijo (fun,a)
x= -a-10:0.1:a+10;
%Gráfica de la función resultante de despejar x y la recta y = x
figure;
plot(x,fun(x),'r');
grid
hold on
plot(x,x, 'r');
hold on
plot(x,x)
%Valores de tolerancia para X y Y
TolX = 10^-10;
TolY = 10^-10;
int=0; %Variable que guarda la cantidad de interacciones
while 1
    %Grafico el valor inicial con su imagen
    plot(a,fun(a),'*','linewidth', 10);
    hold on
    pause(1)
    b = fun(a); %Convertimos el valor de la funcion en nuestra nueva imagen
    %Grafico el valor en el eje x de la imagen
    plot(b,b,'*','linewidth', 10);
    pause(1)
    
    if int > 1
        %Comparo los valores en x y y con sus valores anterios
        if abs(b-raiz)<TolX %Si esta lo suficientemente cerca, tomo el ultimo valor como la raiz
            break;
        end
        if abs(b- fun(b))<TolY
        break;
        end
    end
    a=b; %El nuevo valor inicial es el valor de la imagen
    raiz = b; %La raiz es el ultimo valor en X
    int = int + 1; %Aumenta el contador del numero de interacciones
end
