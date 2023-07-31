% Define the function f(x)
f = @(x) (x^3) - (0.165 * (x^2)) + 3.993 * (10^(-4));

% Input lower bound, upper bound, and error tolerance
xl = input("Enter lower bound: ");
xu = input("Enter upper bound: ");
e = input("Enter error tolerance: ");

% Initialize variables
xm = (xl + xu) / 2;
iteration = 1;

% Display the initial values
fprintf("\nIteration : %d \n", iteration);
fprintf("XL = %.6f\n", xl);
fprintf("XU = %.6f\n", xu);
fprintf("XM = %.6f\n", xm);
fprintf("Relative approximate error: ... \n");

while (1)
    % Calculate function values at boundaries and midpoint
    fl = f(xl);
    fu = f(xu);
    fm = f(xm);

    % Check if the root lies in the left or right subinterval
    if (fl * fm < 0)
        xu = xm;
    else
        xl = xm;
    end

    % Store the old midpoint
    oxm = xm;

    % Calculate the new midpoint
    xm = (xl + xu) / 2;

    % Calculate the relative approximate error
    error = abs((xm - oxm) / xm) * 100;

    % Check if the error is within the tolerance
    if (error <= e)
        break;
    end

    % Display the current iteration values
    iteration = iteration + 1;
    fprintf("\nIteration : %d \n", iteration);
    fprintf("XL = %.6f\n", xl);
    fprintf("XU = %.6f\n", xu);
    fprintf("Root (XM) = %.6f\n", xm);
    fprintf("Relative approximate error: %.6f \n", error);
end

