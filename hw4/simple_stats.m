function S = simple_stats(N)
    meanval = mean(N,2);
    medianval = median(N,2);
    minval = min(N,[],2);
    maxval = max(N,[],2);
    S = [meanval medianval minval maxval];
    
end
