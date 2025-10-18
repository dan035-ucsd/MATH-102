A = [ 3  1  -1
      0  -2  1 
      2 -2  5 ]; 
b = [ 2 0 10 ];
n = 3;
N = 48;

function [x] = jacobi(A, b, n, N) 
    x = zeros(n,1);     % set initial guess to zero vector
    xold = zeros(n,1);  % create old x vector to store previous iteration values
    for iterat = 1:N    % set number of iterations
        for row = 1:n   
           sum = 0;     % reset sum to zero for each row
           for col = 1:n 
                if row ~= col    
                    sum = sum + A(row,col) * xold(col);  
                end
           end
           x(row) = ( b(row) - sum ) / A(row,row);
        end
        xold = x;         % update old x vector for next iteration
        r = b' - A * x;   % compute the residual vector
        rnorm = 0;
        sumnorm = 0;
        for i = 1:n
            sumnorm = sumnorm + r(i)^2;
        end
        rnorm = sqrt(sumnorm)
    end
end
x = jacobi(A,b,n,N)