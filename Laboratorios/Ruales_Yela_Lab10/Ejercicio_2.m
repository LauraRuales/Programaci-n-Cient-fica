% Ejercicio 2
%% Parte a-i
x = 1940:10:2010;
x= x';
y = [132.165; 151.326; 179.323; 203.302; 226.542; 248.71; 281.422; 308.4];
[ ind , dep] = InterPol(x,y);
for i= 1:length(ind)
    if ind(i) == 1995
        Pob = dep(i);
        break;
    end
end
fprintf ( '%s %3.3f','La población en el año 1995 es:', Pob);

%% Parte b
x = [1940:10:2010];
y = [132.165; 151.326; 179.323; 203.302; 226.542; 248.71; 281.422; 308.4];
[ ind , dep] = InterPol(x,y);
for i= 1:length(ind)
    if ind(i) == 1995
        DelPo = dep(i+1) - dep(i);
        DelTi = ind(i+1) - ind(i); 
        break;
    end
end
TasCa = DelPo/DelTi;
fprintf('%s %2.4f %s', 'La tasa de cambio en el año 1995 según el método de interpolación polinomial es:', TasCa);