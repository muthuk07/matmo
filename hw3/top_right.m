function W = top_right(N , n)
  % Author: Muthu Kumar 
  % 09/01/2016
  % A function called top_right that takes in
  % Inputs: 
  % N -  a matrix
  % n - a Scalar,   non negative integer
  % Assumptions 
  % That  each dimension of N is greater than or equal to n
  % Outputs:
  % The function returns the nun square array at the top right corner of the N
  [nrows, ncols] = size(N);
  W = N(1:n,(end-n+1):end);
end