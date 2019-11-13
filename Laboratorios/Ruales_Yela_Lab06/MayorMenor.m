function [arreglado] = MayorMenor( Vector, Posicion)
n = length(Vector);
if Posicion == n
    arreglado = Vector; 
else
    if Vector(Posicion) < Vector( Posicion +1)
        x = Vector(Posicion +1);
        Vector(Posicion +1) = Vector(Posicion);
        Vector(Posicion) = x;
        if Posicion>1
            arreglado = MayorMenor(Vector, Posicion -1);
        else
            arreglado = MayorMenor(Vector, Posicion +1);
        end
    else
        arreglado = MayorMenor(Vector, Posicion +1);
    end
end