function per = zero_stat(M)
    [mrows mcols ] = size(M);
    total_entries = mrows * mcols;
    zero_occs =  total_entries - nnz(M); %using nnz functions...
    per = zero_occs*100/ total_entries; 
    
end
