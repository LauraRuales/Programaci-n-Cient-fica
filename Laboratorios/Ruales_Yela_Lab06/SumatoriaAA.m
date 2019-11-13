function resultado = SumatoriaAA(interacciones) 
if interacciones>1
    resultado = interacciones*(((2*interacciones)-1) + SumatoriaA(interacciones-1));
else
    resultado = (2*interacciones-1);
end
    