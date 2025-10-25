function [eigvec] = inversepowermethod(n, A, q, N, z)
    for iter = 1:N
        for row = 1:n
           for col = 1:n
                    if row == col
                    A(row, col) = A(row, col) - q;    % calculate A - qI
                end
            end
        end
        lu = lu_fact(n, A);              % calculate LU factorization of A - qI
        z = solve_lu_fact(n, lu, z);      % solve (A - qI)x = z
    end
    eigvec = z;
end
inversepowermethod(2, [3 2; 1 -3], 2, 1, [1; 1])