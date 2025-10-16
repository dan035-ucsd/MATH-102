A = [ 3  1  -1
      0  -2  1 
      2 -2  5 ]; 
b = [ 2 0 10 ];
n = 3;
N = 10;

function [x] = gaussseidel(A, b, n, N)
    for i = 1:n
        x(i) = 0;       % set initial guess to zero vector
    end
    for iterat = 1:N    % set number of iterations
        for row = 1:n   
           sum1 = 0;     % reset first sum to zero for each row
           sum2 = 0;     % reset second sum to zero for each row
           for col = 1:row-1     
                sum1 = sum1 + A(row,col) * x(col);  % how to iterate on x^(k+1)  
           end
           for col = row+1:n
               sum2 = sum2 + A(row,col) * x(col);
           end
           x(row) = ( b(row) - sum1 - sum2 ) / A(row,row)
        end
    end
end

x = gaussseidel(A,b,n,N);