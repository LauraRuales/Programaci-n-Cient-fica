syms x;
Funcion = 3383 -3850 + 39.9*x - 0.78*x.^2 + 0.0039*x.^3;
[Edad,Int, Error] = Newton_Raphson( Funcion, 45, 15);

%%%Ver error
