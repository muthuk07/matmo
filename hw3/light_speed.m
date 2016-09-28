function W = light_speed(N)
  % Author: Muthu Kumar 
  % 09/01/2016
  % function called light_speed that takes 
  % Inputs 
  % N - a row vector of distances (in kilometers)
  % Outputs:
  % W - two row vectors of the same length. 
  % Each element of the first output argument is the time  in minutes that light would take to travel  the distance specified by the corresponding element of the input vector
  % To verify, it takes ~ 8+ minutes for sunlight to reach earth which is 150 million kms away.
  % The second row in the output contains the input distances converted to miles
  % Assumptions:
  % C - the speed of light is 300,000 km/s
  % M2K-  one mile equals 1.609 km 
  C = 300000; % C - the speed of light is 300,000 km/s
  kms_per_mile = 1.609;  % M2K-  one mile equals 1.609 km 
  
  [rows, cols] = size(N); % input size
  
  W = zeros(2,cols); % initializing the output matrix
  
  W(1:end) =   (1/(C*60))* N(1:end) ;
  W(2:end) =   (1/1.609) * N(1:end);
   
end
