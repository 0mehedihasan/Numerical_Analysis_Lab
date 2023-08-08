f = @(x) (x^3)-(0.165*(x^2))+3.993*(10^(-4));
f_prime= @(x) 3*(x^2)-0.33*x;
x0=input("Enter 1st Guess:");
x1=input("Enter 2nd Guess:");
e=input("error tol:");
it=1;
while(1)
fx0=f(x0);
  fxi=f(xi);
  fx1=f(x1);
  x2=x1- ((fx1*(x1-x0))/(fx1-fx0));
  printf("Iteration %d\n",it);
  printf("Root:%d\n",xi1);
  error=abs((x2-x1)/x2)/100;
  printf("Relative approximate error: %f \n", error);
  x0=x1;
  x1=x2;
  it++;
  if(error<=e)
  break
  endif
endwhile
