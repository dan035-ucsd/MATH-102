function [x] = backsub(A, b, n)
    for i = n:-1:1
        x(i,1) = b(i);
        for j = i+1:n
            x(i) = x(i)-A(i,j)*x(j)
        end
        x(i,1) = x(i)/A(i,i)
    end
end