%Se crea una funcion que realizara algunas estadisticas basicas como el
%calculo del minimo, maximo y media
%Recibe por parametro la lista de datos a los que le hara este calculo y
%retorna minimo, maximo y media 
function [ minimo, maximo, media]= Datos ( lista )
maximo = -inf; %Se inicializa un maximo
 minimo = inf;%Se inicializa un minimo
 suma=0; %Variable que guardara la suma para con ella calcular el promedio luego
for i=1:length(lista)%Se crea un ciclo que comparara cada dato tanto con el minimo y como con el maximo 
    suma = suma + lista(i); %Suma cada valor de la lista asi misma
    if maximo< lista(i) %Si el valor de la lista es mayor qeu el maximo actual
        maximo = lista(i);%Este valor sera el nuevo maximo
    end
    if minimo > lista(i)%Si el valor de la lista es menor que el minimo actual
        minimo= lista(i);%Este valor sera el nuevo minimo    end
end
media = suma/(length(lista));%Media o promedio de la lista