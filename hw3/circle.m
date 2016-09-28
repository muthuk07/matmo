function [area,cf] = circle( r )
% Author: Muthu Kumar 
% 09/01/2016
% This function calculates the area of the circle for a given radius...
% Inputs: 
% r = some radius
% Outputs:
% W [area, cf] where,
% area = the area of the circle..
% cf = circumference of the circle in the input units

area = pi* r^2;
cf = 2*pi*r;

end