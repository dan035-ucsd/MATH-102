function [y] = f(x)
    y = x^2 - 5;
end

function [c] = bisect(a, b, N)
    fa = f(a);
    fb = f(b);
    for step = 0:N
        c = (a+b)/2;
        fc = f(c);
        if fa*fc <= 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
    end
end

bisect(2, 3, 25)