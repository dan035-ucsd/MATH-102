function [y] = f(x)
    y = x * (1 - exp(1)^x);
end

function [yprime] = fprime(x)
    yprime = 1 - exp(1)^x - x * exp(1)^x;
end

function [x] = newton(p, N)
    for iter = 1:N
        x = p - f(p) / fprime(p)
        p = x;
    end
end

% Example usage:
newton(0.1, 5);