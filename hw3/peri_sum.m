function W = peri_sum(N)
  % Author: Muthu Kumar 
  % 09/01/2016
  % A function called peri_sum that takes in
  % Inputs: 
  % N -  a matrix
  % Outputs:
  % W- the  SUM of the elements forming the perimeter of the matrix...
  % the logic used here is to create the core of the matrix excluding the perimeter elements 
  % and substract from the original matrix 
  % finally we arrange the elements in the column vector and return the sum of the elements...
  Ncore = N;
  Ncore(:, [1 end])=0;   % setting 1st and last colum to 0 for all rows;
  Ncore([1 end], :) = 0; % setting 1st and last row to 0 for all columns... 
  NPeri = N - Ncore;     % extracting the perimeter elements from original input matrix
  W = sum(NPeri(:));     % coverting the perimeter elements into a colum vector for addition
  
end
  