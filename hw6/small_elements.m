function V = small_elements(X)
[mrows, mcols]= size(X);
R =[];
C =[];
V=[];
vidx=1;
    for ii = 1:mrows
        for jj = 1:mcols
          if X(ii,jj)< (ii*jj)
             R(nnz(R)+1) =ii;
             C(nnz(C)+1) =jj;
             V(vidx,1)=ii;
             V(vidx,2)=jj;
             vidx =vidx+1;
        
             
          end
        end
    end
   [vrows vcols] = size(V);
   if(vcols~=0)
     V = sortrows(V,2);
   end
    
end
