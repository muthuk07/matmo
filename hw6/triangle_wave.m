function summt = triangle_wave(n)
     %t=[0:4*pi/1000:4*pi];
     t= linspace(0,4*pi,1001 );
     [trows tcols] = size(t);
     summt= zeros(1,tcols);
     for tidx = 0:1000
        for k = 0:n
         
           summt(tidx+1) = summt(tidx+1) +((-1)^k/(2*k+1)^2)* sin((2*k+1)*t(tidx+1));
           
        end
     end
end
      