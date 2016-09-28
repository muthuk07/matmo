function BS = halfsum(V)
    
[arows acols] = size(V);

W =zeros(arows,acols);
xmax = arows+1;
ymax = acols+1;
for cidx = 1:acols
    
    for ridx = 1:arows
        if xmax==ymax %square matrix ie., if xmax==ymax
           if(cidx + ridx >= xmax )
             W(ridx,cidx)= V(ridx,cidx);
           end
        elseif xmax~=ymax && xmax~=1 && ymax~=1 
              fprintf('W(%d,%d) ',ridx, cidx);
             if((ridx+cidx) == (xmax))||((ridx+cidx) > xmax)
                  W(ridx,cidx)= V(ridx,cidx);
                  fprintf(' - adding...\n' );
             end
             
        elseif xmax==1 & ymax==1 
                fprintf('a single cell row  ...\n');
                W(ridx,cidx)=V(ridx,cidx);
                
        elseif xmax~=ymax && ymax==1
                fprintf('a column matrix ...\n');
        end
    end
end

BS = sum(W(:));
end