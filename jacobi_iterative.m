A = [ 3  1  -1
      0  -2  1 
      2 -2  5 ]; 
b = [ 2 0 10 ];
n = 3;
N = 1;

function [x] = jacobi(A, b, n, N)
    for i = 1:n
        x(i) = 0;       % set initial guess to zero vector
    end
    for iterat = 1:N    % set number of iterations
        for row = 1:n   
           sum = 0;     % reset sum to zero for each row
           for col = 1:n 
                if row ~= col    
                    sum = sum + A(row,col) * x(col);  
                end
           end
           x(row) = ( b(row) - sum ) / A(row,row)
        end
    end
end

x = jacobi(A,b,n,N);
