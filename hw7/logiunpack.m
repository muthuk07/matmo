function logical_matrix  =logiunpack(sparse_matrix) 
      [mrows mcols] = size(sparse_matrix);
      logical_matrix = logical(repmat([0],mcols));
      max_value = max([sparse_matrix{:}]);
      if(mcols>max_value)
          max_value=mcols;
      end
      
      for ii = 1:length(sparse_matrix)
        %process each cell i.e., pointer to array 
        output_row = zeros(1,max_value);
        input = sparse_matrix{ii};
        if length(input) >0
           for jj = 1:length(input)
            output_row(input(jj)) = 1;
           end
           logical_matrix(ii,:) = output_row;
        end
      end
      logical_matrix = logical(logical_matrix);
    
end