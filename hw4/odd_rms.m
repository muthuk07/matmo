function orms = odd_rms(n)
    last_no = 2*n-1;
    odd = [1:2:last_no];
    orms = sqrt(mean(power(odd, 2)));    
end
