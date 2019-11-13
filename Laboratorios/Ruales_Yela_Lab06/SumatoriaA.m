function resultado = SumatoriaA(interacciones,n)
if interacciones > 1 
    resultado = n*(2*interacciones -1) + SumatoriaA(interacciones-1,n);
else 
    resultado = n;
end