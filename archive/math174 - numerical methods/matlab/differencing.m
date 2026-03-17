function [fprime] = deriv(y, h, m)
% nodes ordered from smallest to largest

   fprime(1) = (y(2)-y(1))/h;
   fprime(m) = (y(m)-y(m-1))/h;
   for i = 2:m-1
      fprime(i) = (y(i+1)-y(i-1))/(2*h);
   end

end
