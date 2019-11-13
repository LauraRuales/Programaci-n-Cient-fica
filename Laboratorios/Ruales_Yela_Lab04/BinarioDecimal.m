%Funcion que recibe por parametro un numero binario cualquiera 
%y devuelve su correspondente en numero decimal
function [decimal] = BinarioDecimal (binario)
cont = 1; %Variable que regula la cantidad de veces que se realiza el ciclo
decimal= 0; %Variable que guarda el equivalente en decimal del binario
decimal1 = 0; %Variable que guarda el equivalente en decimal de la parte entera del binario
decimal2= 0; %Variable que guarda el equivalente en decimal de la parte fraccionaria del binario
binario= str2double(binario); %Se pasa el binario de string a double para poder redondearlo y restarlo
bin1= fix(binario); %Se redondea el binario a su parte entera
bin2= binario-bin1; %Se toma el binario original y se le resta la parte entera para obtener la parte fraccional
bin1 = num2str(bin1); %Se transforma la parte entera en un string para poder acceder a cada valor
tamanho1=length(bin1); %Variable que guarda la longitud de la parte entera del binario
bin2 = num2str(bin2); %Se transforma la parte fraccional a un string para poder acceder a cada valor
tamanho2 = length(bin2); %Variable que guarda la longitud de la parte fraccional del binario
while cont <= tamanho1 %Ciclo while que recorre la parte entera del binario
        posicion1 = str2double(bin1(tamanho1-cont+1)); %Variable que contiene el numero particular correspondiente a la posicion del contador
        exponente= 2^(cont-1); %Numero por el cual se multiplica segun la posicion en el binario
        decimal1 = decimal1 + (posicion1*exponente); %Se le suma el equivalente de ese posición al numero decimal 
        cont = cont+1; %Se continua al proximo digito del binario
end
cont=2; %Matlab toma el punto decimal como una posición ademas esta la posicion del cero por lo que debe iniciarse a recorrer desde la posición 3
while cont <tamanho2 %Ciclo while que recorre la parte fraccional del binario
    cont = cont + 1; %Se aumenta el contador en un valor para acceder a la sgte posicion
    posicion2 = str2double(bin2(cont)); %Variable que contiene el numero particular correspondiente a la posicion del contador
    exponente = 2^-(cont-2); %Se hace la exponencial que nos da el valor de cada posición
    decimal2 = decimal2 + (posicion2*exponente); %Se suma al vector el valor de cada posición dependiendo si es 0 o 1
end
decimal = decimal1 + decimal2; %Se suma la parte entera con la decimal para dar el resultado
 