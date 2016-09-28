function [table summa] = multable(n,m) 
 
    if nargin<1
       error('1 input atleast');
    end
    
    if nargin < 2
       m=n;
    elseif ~isscalar(m)||m<1||m~=fix(m)
        error('fix m value');
    end
    
    if ~isscalar(n)||n<1||n~=fix(n)
        error('fix n value');
        
    end
    
   
   table = (1:n)' *(1:m);
        
    
   if nargout==2
       summa = sum(table(:));
  end
        