function [pmax sid] =  max_product(v, n)
    pmax=0;
    sid=-1;
    if(n>numel(v)) 
          pmax=0;
          sid=-1;
    elseif (n==numel(v)) 
        pmax=prod(v);
        sid=1;
    else
       vlen= numel(v);
       for idx = 1:vlen
           N=n-1; %inclusive of the current idx...
           if(idx+N < vlen) 
               subm = v(idx:idx+N);
           else     
               subm = v(vlen-N:vlen);
           end
           p = prod(subm);
           if p >pmax
             pmax = p;
             sid=idx;
           end
       end
    end
end