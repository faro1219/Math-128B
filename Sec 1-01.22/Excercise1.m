%% Define norm functions

onenorm = @(x) sum(abs(x));
twonorm = @(x) sqrt(sum(x.^2));
infnorm = @(x) max(abs(x));

x = 1:2024;

fprintf("1-norm of x is %.4f\n", onenorm(x));
fprintf("2-norm of x is %.4f\n", twonorm(x));
fprintf("Inf-norm of x is %.4f\n", infnorm(x));

%% Compare to the built-in functions 

error_one = onenorm(x) - norm(x,1);
error_two = twonorm(x) - norm(x,2);
error_inf = infnorm(x) - norm(x, Inf);

fprintf("error of 1-norm is %.4f\n", error_one);
fprintf("error of 2-norm is %.4f\n", error_two);
fprintf("error of Inf-norm is %.4f\n", error_inf);

