function W = sum3and5muls(nn)
    threes = [3:3:nn];
    fives  = [5:5:nn];
    fifteens = [15:15:nn];
    W = sum(threes)+ sum(fives)-sum(fifteens);
    
end