function P = palin_product( dig , lim)
    P=0;
    max_input = sum(9*(10.^(dig-1:-1:0)));
    min_input = sum(1*(10.^(dig-1:-1:0)));
    test=0;
    for ii = max_input:-1:min_input
        for jj = max_input:-1:min_input
           test0 = ii*jj;
           if is_palindrome(test0) && test0>P && test0<lim 
                 P = test0;
           end
           
        end
     
    end
    


    function t=is_palindrome(num)
        t=false;
        snum = sprintf('%d', num);
        if snum ==fliplr(snum) 
           t=true;
        end   
    end
    
end
