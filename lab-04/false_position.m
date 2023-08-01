f = @(x) x^3-0.165*x^2+3.993*10^-4;
xl = input("Enter lower bound: ");
xu = input("Enter Upper bound: ");
e = input("Enter Error tollerance: ");
fl= f(xl);
fu= f(xu);
xr=(xu*fl - xl*fu)/(fl - fu);
fr=f(xr);

it=1;

printf("\nIteration : %d \n", it);
printf("XL = %d\n", xl);
printf("XU = %d\n", xu);
printf("XR = %d\n", xr);
printf("Relative approximate error: ... \n");
it = it+1;
while(1)
   
   
   if (fl*fr < 0)
      xu=xr;
   else
      xl=xr;
   endif
   fl= f(xl);
   fu= f(xu);
   fr=f(xr);
   oxr = xr;
   xr=(xu*fl - xl*fu)/(fl - fu);
   error =abs((xr - oxr)/xr)*100 ;
   if(error <=e)
      break;
   endif


   printf("\nIteration : %d \n", it);
   printf("XL = %d\n", xl);
   printf("XU = %d\n", xu);
   printf("Root (XR) = %d\n", xr);
   printf("Relative approximate error: %d \n", error);

   it = it+1;
endwhile