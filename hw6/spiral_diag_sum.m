function  Sout = spiral_diag_sum(oddno)
    %test odd scalar
    if ~isscalar(oddno)||oddno<0|| (mod(oddno,2)==0)
        error('check the input');
    end
    
   A = spiral(oddno);
   Sout = 0;
    %sum of diag and counter diagonals 
    for xidx = 1:oddno
        for yidx = 1:oddno
           if(xidx==yidx)||(xidx+yidx == oddno+1)
               Sout = Sout + A(xidx,yidx);   
               %fprintf('(%d,%d), +%d=>%d\n ',xidx,yidx,  A(xidx,yidx),summo );
           end
         end
    end
    % disp(Sout);
end