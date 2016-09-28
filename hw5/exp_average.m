function  OUTn = exp_average(IN_t , varargin) 
    persistent out;
    persistent coeff;
    
    if nargin<2
 if(out
            out = out +  coeff*IN_t + (1-coeff)*exp_average(IN_t-1);
        end
     
    elseif(nargin==2) %reset called...
                coeff=varargin{1};
                out = IN_t; %IN_1

    
    end
    
    
    
     OUTn
    

end