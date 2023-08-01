f = @(x) (x^3)-(0.165*(x^2))+3.993*(10^(-4));
f_prime=diff(f,x);
disp(f_prime);