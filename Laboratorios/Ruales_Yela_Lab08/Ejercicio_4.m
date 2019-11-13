% Esfuerzo de una persona al saltar
syms x; 
Funcion = inline( 480*sin(pi*x/180) + 160*(1-x/180) - 480);% Funcion que describe la fuerza en función del tiempo y con una masa estable
[Raiz, limites, error]=Falsa_Posicion(Funcion,1,75);
fprintf(' %s %d ', 'El tiempo en el cual la fuerza es igual a 480 lbf es:', Raiz)

