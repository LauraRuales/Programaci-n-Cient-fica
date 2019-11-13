% function InterSplinDer1(x,y, deri, derf)
x = [ 0; 5; 10; 15; 20; 25; 30];
y = [ 100; 89.556; 78.4905; 67.2706; 56.3897; 46.2842; 37.2687];
incog = 4*(length(x) - 1);
Mat = zeros(incog,incog);
for i =1:incog
    for j=1:incog
        if i < length(x)
            if j<=4
                AvanJ = (i-1)*4+j;
                exp = 4-j;
                Mat(i,AvanJ)= x(i)^(exp);
            end
        elseif length(x)<= i && i <=2*(length(x)-1)
            if j<=4
                AvanJ = (i-length(x))*4+j;
                exp = 4-j;
                AvanI = i - length(x)+2;
                Mat(i,AvanJ)= x(AvanI)^(exp);
            end
        elseif 2*(length(x)-1)<i && i<=3*(length(x)-1)-1
            if j<=4
                exp = 3-j;
                CoefDer = 4-j;
                AvanI = i-2*length(x)+3;
                AvanJ = (i-2*(length(x)-1))*4-4;
                Mat(i,j+AvanJ)= CoefDer*x(AvanI)^(exp);
            elseif 4<j && j<=8
                if i ==13 || i == 17 
                    Mat(i,j) = 0;
                else
                exp = 7-j;
                CoefDer = 8-j;
                AvanI = i-2*length(x)+3;
                AvanJ = (i-2*(length(x)-1))*4-4;
                Mat(i,j+AvanJ)= -CoefDer*x(AvanI)^(exp);
                end
            end
        elseif 3*(length(x)-1)-1 < i && i <= 4*(length(x)-1)-2
            if j<=4
                exp = 2-j;
                if j == 1 || j == 3
                    CoefDer = 6-3*(j-1);
                elseif j==2
                    CoefDer = 2;
                else
                    CoefDer = 0;
                end
                AvanI = i-3*(length(x)-1)+ 2;
                AvanJ = (i-3*(length(x)-1))*4;
                Mat(i,j+AvanJ)= CoefDer*x(AvanI)^(exp);
            elseif 4<j && j<=8
                exp = 6-j;
                if j == 5 || j == 7
                    CoefDer = 6-3*(j-5);
                elseif j==6
                    CoefDer = 2;
                else
                    CoefDer = 0;
                end
                AvanI = i-3*(length(x)-1)+2;
                AvanJ = (i-3*(length(x)-1))*4;
                Mat(i,j+AvanJ)= -CoefDer*x(AvanI)^(exp);
            end
        else
            if j==1 || j==incog-7
                Mat(i,j) = 6;
            elseif j == 5 || j == incog-3
                Mat(i,j)= -6;
            end
        end
    end
end
     yfinal = zeros(1,incog);
     for i =1:incog
         if i < length(x)
             yfinal(i) = y(i);
         elseif length(x) <=i && i<=2*(length(x)-1)
             yfinal(i) = y(i-5);
         
         elseif i == 2*(length(x)-1) +1
             yfinal(i) = deri;
             elseif i == 3*(length(x)-1)-1
             yfinal(i) = derf;
         end
     end   
 Deter = det(Mat);
 % Para halla el vector de coeficientes se necesita la inversa y ya que
 % esta matriz tiene determinante cero, no existe la inversa. Por tanto, no
 % se puede conocer sus coeficientes
% %  Inv = Gauss_Jordan(Mat);
% %  Coefs = yfinal*Inv; 
%Si se pudiera tener los coeficientes se armarian las n funciones y con
%esto los valores entre cada punto