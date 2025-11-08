function [val] = lagrangeinterp(x, y, n, z)
    val = 0;
    for i = 1:n
        for j = 1:n
            if j ~= i
                val = val + y(i)*((z-x(j))/(x(i)-x(j)));
            end
        end
    end
end

x = [0,100];
y = [32, 212];
n = length(x);
z = 37;
result = lagrangeinterp2(x, y, n, z)

function [val] = lagrangeinterp2(x, y, n, z)
    val = 0;
    prod = 1;
    for i = 1:n
        for j = 1:n
            if j ~= i
                prod = prod * ((z - x(j)) / (x(i) - x(j)));
            end
        end
        val = val + y(i) * prod;
    end
end