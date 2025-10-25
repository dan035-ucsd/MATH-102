function [x] = solvelufact(n, lu, b)
    % Forward substitution to solve Ly = b
    y = zeros(n, 1);
    for i = 1:n
        sum = 0;
        for j = 1:i-1
            sum = sum + lu(i, j) * y(j);
        end
        y(i) = b(i) - sum;
    end

    % Backward substitution to solve Ux = y
    x = zeros(n, 1);
    for i = n:-1:1
        sum = 0;
        for j = i+1:n
            sum = sum + lu(i, j) * x(j);
        end
        x(i) = (y(i) - sum) / lu(i, i);
    end
end

A = [4 -1 -2 -4 
     -1/4 7/4 -1/2 0
     -1/2 -2/7 -1/7 -3
     0 0 -14 -42]
b = [1; 0; 1; 0];

solvelufact(4, A, b)