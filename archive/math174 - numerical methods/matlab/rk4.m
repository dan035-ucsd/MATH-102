function [w] = rk4(t0, y0, h, N)

   t = t0;
   w = y0;
   for step = 1:N
      K1 = h*fode(t,w);
      K2 = h*fode(t+h/2,w+K1/2);
      K3 = h*fode(t+h/2,w+K2/2);
      K4 = h*fode(t+h,w+K3);
      w = w+(K1+2*K2+2*K3+K4)/6;
      t = t+h;
   end

end
