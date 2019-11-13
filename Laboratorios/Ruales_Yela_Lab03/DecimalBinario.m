function [binario] = DecimalBinario (decimal) 
binario =[]; %Variable que almacena el numero en binario que va a devolver
a = str2double(decimal); %Se transforma el decimal de string a numero
b=-1; %Variable en la que se guarda el binario correspondiente a la parte fraccionaria
if a>1 %Revisa si el numero es mayor que cero
while a  ~=0  %Ciclo que divide y almacena los valores para el binario 
    binario = [mod(a,2), binario]; %Vector que guarda el numero binario que se va a devolver
    c= fix(a/2) %Se guarda el cociente de la división para hacer la sgte division
    a=c %El cociente se transforma en dividendo para continuar con el proceso
end
else
    cont=0;
    while b~=1 && cont<10 %Si pasa de diez ciclos probablementente el decimal sea periódico y hasta este punto ya se conoce su 'ciclo'
        b = a*2; % El decimal se multiplica por 2
        c=fix(b);
        binario = [binario, c] ;  %se le agrega el bit correspondiente al numero binario
        a= a*2-c;
        cont= cont+1;
    end
end