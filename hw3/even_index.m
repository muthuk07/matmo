function E = even_index(M )
    % Author: Muthu Kumar 
    % 09/01/2016
    % This function returns the even elements from all the rows and columns of a input matrix...
    % Inputs: 
    % M = some input Matrix of unknown dimension
    % Outputs:
    % E = A Sub Matrix containing only the even rows and column elements from the input matrix ..
    E = M(2:2:end,2:2:end);
    
end