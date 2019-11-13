%Ejercicio 1
%% Parte a -i
x = [ 0; 5; 10; 15; 20; 25; 30];
y = [ 100; 89.556; 78.4905; 67.2706; 56.3897; 46.2842; 37.2687];
[ ind , dep] = InterPol(x,y);
for i= 1:length(ind)
    if ind(i) == 9
        Pob = dep(i);
        break;
    end
end
fprintf ( '%s %3.3f','La población en el año 9 es:', Pob);
%% Parte a -ii
%No se puede tener ningun resultado del método segun las condiciones de la
%teoría
%% Parte b 
funPob = @(x) 300./(2+exp(x.*(0.06)));
x = 0:0.1:30;
y = funPob(x);
a = [ 0; 5; 10; 15; 20; 25; 30];
b = [ 100; 89.556; 78.4905; 67.2706; 56.3897; 46.2842; 37.2687];

[ind, dep] = InterPol(a,b);

figure;
plot(x,y,'r');
hold on
plot(a,b,'*');
hold on
plot( ind, dep, 'y')
fprintf('%s %s', 'Con base en lo mostrado por la gráfica podemos observar que tanto la interpolación como la función arrojan los mismos puntos en todo el intervalo');

%% Parte c
x = [ 0; 5; 10; 15; 20; 25; 30];
y = [ 100; 89.556; 78.4905; 67.2706; 56.3897; 46.2842; 37.2687];
[ ind , dep] = InterPol(x,y);
for i= 1:length(ind)
    if ind(i) == 9
        DelPo = dep(i+1) - dep(i);
        DelTi = ind(i+1) - ind(i); 
        break;
    end
end
TasCa = DelPo/DelTi;
fprintf('%s %2.4f %s', 'La tasa de cambio en el año nueve según el método de interpolación polinomial es:', TasCa),
 'Ya que es negativa podemos ver que la población disminuye';