function w = flip_it(v)
    % Author: Muthu Kumar 
    % 09/01/2016
    % This function flips elements from all the rows and columns of a input matrix v...
    % Inputs: 
    % v = some input Matrix/Vector of unknown dimensions
    % Outputs:
    % w = A Matrix containing all rows and column elements flipped from the input matrix ...
    
    w  =  v(end:-1:1,end:-1:1); 
    
end