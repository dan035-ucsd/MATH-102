function [LU] = luFactorization(n, A)
    LU = A;
    for k = 1:n-1
        for i = k+1:n
            LU(i, k) = LU(i, k)/LU(k, k);
            for j = k+1:n
                LU(i, j) = LU(i, j) - (LU(i, k) * LU(k, j));
            end
        end
    end
end