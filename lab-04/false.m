f=@(x) (x^3)-(0.165*(x^2))+3.993*(10^(-4));
xl=input("Lower Bound:");
xu=input("Uper Bound:");
e=input("Error tolerace");
fl=f(xl);
fu=f(xu);
xr=(((xu*fl)-(xl*fu))/(fl-fu));
it=1;
printf("\n Iteration:%d\n",it);
printf("\n XL:%d\n",xl);
printf("\n XU:%d\n",xu);
printf("\n Xr:%d\n",xr);

it=it+1;
while(1)
     fl=f(xl);
     fu=f(xu);
     fm=f(xr);
     if(fl*fm<0)
     xu=xr;
     else
     xl=xr;
   endif
   oldxr=xr;
   xr=(xl+xu)/2;
   error=abs((xr-oldxr)/xr)*100;
   if(error<=e)
   break;
 endif
 
printf("\n Iteration:%d\n",it);
printf("\n XL:%d\n",xl);
printf("\n XU:%d\n",xu);
printf("\n root XM:%d\n",xr);
printf("RAE:%d",error);
it=it+1;
endwhile
