function sparse_matrix = logipack(logical_matrix)
[maxr maxc] = size(logical_matrix)
sparse_matrix = {};

for row = 1:maxr
    val_array = [];
    for cols = 1:maxc
        if logical_matrix(row,cols)==1
            val_array = [val_array cols];
        end
    end
    sparse_matrix{1,row} = val_array;
end

end