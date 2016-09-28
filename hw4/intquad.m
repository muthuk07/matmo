function W = intquad(m,n)
    top_left     = zeros(m,n);
    top_right    = ones(m,n);
    bottom_left  = ones(m,n)*2;
    bottom_right = ones(m,n)*3;
    
    W = [top_left top_right; bottom_left bottom_right];
    
end
