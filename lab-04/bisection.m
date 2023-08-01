f=@(x) (x^3)-(0.165*(x^2))+3.993*(10^(-4));
xl=input("Lower Bound:");
xu=input("Uper Bound:");
e=input("Error tolerace");
xm=(xl+xu)/2;
it=1;
printf("\n Iteration:%d\n",it);
printf("\n XL:%d\n",xl);
printf("\n XU:%d\n",xu);
printf("\n XM:%d\n",xm);

it=it+1;
while(1)
     fl=f(xl);
     fu=f(xu);
     fm=f(xm);
     if(fl*fm<0)
     xu=xm;
     else
     xl=xm;
   endif
   oldxm=xm;
   xm=(xl+xu)/2;
   error=abs((xm-oldxm)/xm)*100;
   if(error<=e)
   break;
 endif
 
 
printf("\n Iteration:%d\n",it);
printf("\n XL:%d\n",xl);
printf("\n XU:%d\n",xu);
printf("\n root XM:%d\n",xm);
printf("RAE:%d",error);
it=it+1;
endwhile
