function amag = accelerate(F1, F2, m)
  % Author: Muthu Kumar 
  % 09/01/2016
  % Function that is called like this: amag = accelerate(F1,F2,m)
  % Inputs:
  % F1 - A 3-element column vector representing the forces (kg.m/s2) applied to the object  
  % F2 - Also another 3-element column vector representing the forces(in kg.m/s2) applied to the object
  % m - The input argument  m equals the mass (in kg) of the object  
  %  The three elements of each force equal the x, y, and z components of the force in Newtons. 
  % Outputs:
  % amag - a scalar that is equal to the magnitude of the object’s acceleration. 
  % NOTE:
  % The function calculates the object’s acceleration vector  a by  using Newton’s law: 
  % F= ma, where F is the sum of F1 and F2. 
  % finally it returns the magnitude of a m/s2.

  
  Net_F = F1 + F2 ;
  amag = sum(Net_F(:))/m;  
    
end
