function [sum] = quadratic_interp(x, y, m, z)
    i = 1;
    while z > x(i)
        i = i + 2;
    end 
    % z will be between x(i-2) and x(i)
    sum = y(i-2) * (z - x(i-1)) * (z - x(i)) / ((x(i-2) - x(i-1)) * (x(i-2) - x(i))) + y(i-1) * (z - x(i-2)) * (z - x(i)) / ((x(i-1) - x(i-2)) * (x(i-1) - x(i))) + y(i) * (z - x(i-2)) * (z - x(i-1)) / ((x(i) - x(i-2)) * (x(i) - x(i-1))) 
end

x = [0, 1, 3, 4, 6];
y = [1, 0, 1, 2, 1];
m = 5;
z = 2;
ans = quadratic_interp(x, y, m, z)