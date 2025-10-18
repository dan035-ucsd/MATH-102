function [thedotproduct] = dotprod(x, y, n) 
    for i = 1:n    
        thedotproduct = thedotproduct + x(i) * y(i); 
    end
end