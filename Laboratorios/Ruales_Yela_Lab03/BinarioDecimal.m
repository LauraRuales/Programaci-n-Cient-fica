%Se crea la función que convertira el numero de binario a decimal. Recibe
%como parametro un numero decimal y retorna su equivalente en binario
function [decimal] = BinarioDecimal (binario) %Función
cont = 1;  %variable que contiene la posicion en el numero binario
decimal = 0; %variable que guarda el equivalente en decimal del binario  
tamanho=length(binario);
while cont <= tamanho %Ciclo while que recorre el numero binario
        posicion = str2double(binario(tamanho+1-cont)); %Variable que contiene el numero particular correspondiente a la posicion del contador
        exponente=(2^(cont-1));
        decimal = decimal + (posicion*exponente); %se le suma el equivalente de esa posicion al numero decimal 
       cont = cont+1;   %se sube al proximo digito del binario
end
 