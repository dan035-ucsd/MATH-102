function [eigvec] = inversepowermethod(dim, A, q, N, z)
    for iter = 1:N
        for row = 1:dim
           for col = 1:dim
                    if row == col
                    A(row, col) = A(row, col) - q;    % calculate A - qI
                end
            end
        end
        lu = lu_fact(dim, A);              % calculate LU factorization of A - qI
        z = solve_lu_fact(dim, lu, z);      % solve (A - qI)x = z
    end
    eigvec = z;
end
inversepowermethod(2, [3 2; 1 -3], 2, 1, [1; 1])