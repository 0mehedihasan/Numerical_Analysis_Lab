f = @(x) (x^3)-(0.165*(x^2))+3.993*(10^(-4));
f_prime= @(x) 3*(x^2)-0.33*x;
xi=input("Enter Guess:");
e=input("error tol:");
it=1;
while(1)
  fxi=f(xi);
  f_prime_xi=f_prime(xi);
  xi1=xi-(fxi/f_prime_xi);
  printf("Iteration %d\n",it);
  printf("Root:%d\n",xi1);
  error=abs((xi1-xi)/xi1)/100;
  printf("Relative approximate error: %f \n", error);
  if(error<=e)
  break
  endif
  xi=xi1;
  it=it+1;
  endwhile