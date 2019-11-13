%Funcion que da como resultado si un número es primo o no. Recibe como
%parametro el número que se quiere saber si es primo, y un divisor que el
%usuario debera ingresar como 2
function NumeroPrimo ( primo,divisor)
if primo < 0
    primo = abs(primo);
end
if divisor<primo %Mientras el divisor sea menor que el número primo
    if mod(primo,divisor) == 0 %Si el modulo de la division es cero
        display('El número no es primo'); %El número primo tiene mas divisores 
                              %que si mismo y uno, por lo tanto no es primo y se 
                              %terminan las iteracciones. Mostrado en
                              %consola el resultado
        return;
    else %Si el modulo no es cero, significa que no es divisible por el número en el que va
        divisor = divisor+1; %Aumenta el numero en el que se va a dividir
        NumeroPrimo(primo,divisor); %Llama a la funcion para que verifique si es primo en el numero sgte
    end
else
    display('El número es primo'); %Si llega al mismo valor que el numero que se 
                       % queria saber si era primo, significa que es primo terminan las iteracciones. 
                       %Mostrado en consola el resultado
    return;
end   
end

