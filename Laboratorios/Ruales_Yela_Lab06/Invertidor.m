%Esta funcion recibe una cadena como parametro y devuelve los mismos
%caracteres en orden invertido
function str = Invertidor (cadena)
a = length(cadena); %Pide la longitud de la cadena que entra 
 b= cadena(a); %Asigna a esta variable temporal el ultimo valor de la cadena que entra
if a>1 
   cadena(:,a)=[]; %A la cadena le recorta el caracter de la ultima posicion
   str = strcat(b,Invertidor(cadena)); %El vector en el que se va devolver 
                                       %la cadena invertida se coloca la variable 
                                       %b y se llama de nuevo la funcion
else %Cuando la cadena solo tiene un caracter se coloca este en el vector que se devuelve
    str = b; 
end