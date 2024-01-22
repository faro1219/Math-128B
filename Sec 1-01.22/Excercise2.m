%% Define matrix norms

infnorm = @(x) max(sum(abs(x),2));
fronorm = @(x) sqrt(sum(x.^2, 'all'));

X = 1:100;
X = reshape(X, 10, 10)';

fprintf("Inf norm of x is %.4f\n", infnorm(X));
fprintf("Frobenius norm of x is %.4f\n", fronorm(X));

%% Compare to built-in functions 

error_inf = infnorm(X) - norm(X, Inf);
error_fro = fronorm(X) - norm(X, 'fro');

fprintf("Error of inf norm of x %.4f\n", error_inf);
fprintf("Error of frobenius norm is %.4f\n", error_fro);