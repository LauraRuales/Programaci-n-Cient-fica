%Esta funcion retorna la impresión un vector con los numeros enteros positivos desde
%cero hata el numero que el usuario indique entrando por parámetro
function v =  Imprimir (n)
v=[]; %Se inicializa el vector que se va a retornar como un vector vacio
if n >= 1 % Mientras que el numero de iteracciones restantes sea mayor que 1
 v = [Imprimir(n-1), n]; %La función vuelve a llamarse así misma para llenar el vector
elseif n < 0 %Si el valor ingresado es negativo
    n = abs(n); %Transforma la cantidad ingresada por el usuario en positiva
    v = [Imprimir(n)]; %Imprime en el vector los valores que se necesitan llamando a la misma funcion
    v = -1*v; %Multiplica cada valor del vector por -1 para obtener los valores negativos y no los positivos
else
   v= [0]; %Cuando el numero de iteracciones restantes llega a cero se llena el vector con cero
end