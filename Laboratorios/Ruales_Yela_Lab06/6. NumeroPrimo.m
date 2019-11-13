function n3 = NumeroPrimo ( n2,n)
if n<n2
    if mod(n2,n) == 0          
        n3= false;
        return
    else
        n = n+1;
        NumeroPrimo(n2,n);
    end
end
end
        