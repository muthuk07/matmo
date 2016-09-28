function p = poly_val(c0, c, x )
  
    if isempty(c)   
            p=c0;
    elseif  isscalar(c) 
            p = c0+c*x;
     
    else
       if iscolumn(c)
            c=c';
       end
       m = length(c);
       disp(m);
       X = [x.^[1:m]];
       X = c.*X;
       p = c0 + sum(X);
  
     end
end
