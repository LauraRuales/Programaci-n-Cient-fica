function a = Fibonacci(b)
if  b>2
    
    d = a(length(a)) + a(length(a-1));
    b = b-1;
    a = [Fibonacci(b), d] ;  
else 
    d=a(length(a)) + a(length(a-1));
    a = [a, d] ;
end

    