function V = move_me(V,A)
    if nargin==1
        A=0;
    end
    if(A<0)||~isscalar(A)||~A==fix(A)
        error('A is not a scalar');
    end
    if ~isrow(V)
        error('V is not a row vector');
    end
    vlen = length(V);
    disp(V);
    for ii = vlen:-1:1
        for jj = 1:ii
           if(V(jj)==A) && jj< vlen
               if V(jj)==A
                  temp = V(jj+1);
                  V(jj+1) = V(jj);
                  V(jj) = temp;
                  
               end
           end  
           
        end
            
    end
    
end