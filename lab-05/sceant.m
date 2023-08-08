f = @(x) (x^3)-(0.165*(x^2))+3.993*(10^(-4));
x0=input("Enter 1st Guess:");
x1=input("Enter 2nd Guess:");
e=input("error tol:");
it=1;
while(1)
  fx0=f(x0);
  fx1=f(x1);
  x2=x1- ((fx1*(x1-x0))/(fx1-fx0));
  printf("Iteration %d\n",it);
  printf("Root:%d\n",x2);
  error=abs((x2-x1)/x2)/100;
  printf("Relative approximate error: %f \n", error);
  x0=x1;
  x1=x2;
  it++;
  if(error<=e)
  break
  endif
endwhile

/*Output:
Enter 1st Guess:0.02
Enter 2nd Guess:0.05
error tol:0.0001
Iteration 1
Root:0.0646144
Relative approximate error: 0.002262
Iteration 2
Root:0.0624144
Relative approximate error: 0.000352
Iteration 3
Root:0.0623774
Relative approximate error: 0.000006
*/
