f = @(x) (x^3)-(0.165*(x^2))+3.993*(10^(-4));
xl = input("Enter lower bound: ");
xu = input("Enter Upper bound: ");
e = input("Enter Error tollerance: ");
xm=(xl+xu)/2;
it=1;

printf("\nIteration : %d \n", it);
printf("XL = %d\n", xl);
printf("XU = %d\n", xu);
printf("XM = %d\n", xm);
printf("Relative approximate error: ... \n");
it = it+1;
while(1)
   fl= f(xl);
   fu= f(xu);
   fm= f(xm);
   if (fl*fm < 0)
      xu=xm;
   else
      xl=xm;
   endif

   oxm = xm;
   xm=(xl+xu)/2;
   error =abs((xm - oxm)/xm)*100 ;
   if(error <=e)
      break;
   endif


   printf("\nIteration : %d \n", it);
   printf("XL = %d\n", xl);
   printf("XU = %d\n", xu);
   printf("Root (XM) = %d\n", xm);
   printf("Relative approximate error: %d \n", error);

   it = it+1;
endwhile