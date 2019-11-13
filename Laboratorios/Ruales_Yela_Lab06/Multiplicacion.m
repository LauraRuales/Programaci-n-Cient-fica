%Esta funcion de manera recursiva realiza la multiplicación de dos numeros,
%recibe por parámetro los dos números que vamos a multiplicar y retorna el
%resultado
function resultado = Multiplicacion (b,c)
if c < 0 && b>0
    c = abs(c);
    if c>1 %Mientras el segundo número sea mayor que uno
        resultado =  -1*(b + Multiplicacion(b,c-1)); %En cada iteracción suma el valor
                     %del primer numero al resultado de llamar la función con el segundo numero menos 1,
                     %que hace las veces  de contador de cantidad de interacciones faltantes
    else
        resultado=b; %Cuando esta en la ultima interacción, es decir como si se estuviera
                     %multiplicando por uno, se deja el valor inicial
    end
elseif b < 0 && c>0
    if c>1 %Mientras el segundo número sea mayor que uno
        resultado = (b + Multiplicacion(b,c-1)); %En cada iteracción suma el valor
                     %del primer numero al resultado de llamar la función con el segundo numero menos 1,
                     %que hace las veces  de contador de cantidad de interacciones faltantes
    else
        resultado=b; %Cuando esta en la ultima interacción, es decir como si se estuviera
                     %multiplicando por uno, se deja el valor inicial
    end
elseif c>0 && b >0
    if c>1 %Mientras el segundo número sea mayor que uno
        resultado = (b + Multiplicacion(b,c-1)); %En cada iteracción suma el valor
                     %del primer numero al resultado de llamar la función con el segundo numero menos 1,
                     %que hace las veces  de contador de cantidad de interacciones faltantes
    else
        resultado=b; %Cuando esta en la ultima interacción, es decir como si se estuviera
                     %multiplicando por uno, se deja el valor inicial
    end
elseif c<0 && b <0
        c = abs(c);
    if c>1 %Mientras el segundo número sea mayor que uno
        resultado = -1*(b + Multiplicacion(b,c-1)); %En cada iteracción suma el valor
                     %del primer numero al resultado de llamar la función con el segundo numero menos 1,
                     %que hace las veces  de contador de cantidad de interacciones faltantes
    else
        resultado=b; %Cuando esta en la ultima interacción, es decir como si se estuviera
                     %multiplicando por uno, se deja el valor inicial
    end
else c==0 || b == 0;
        resultado = 0;
end

