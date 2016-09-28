function mbd = spherical_mirror_aberr(fn,D)
 deltax = 0.01;
 x = [0 :deltax:D/2]; 
 xlen = length(x);
 f = fn*D;
 theta = [asin(x(1:xlen)/(2*f))];
 num = [2*f*tan(2*theta(1:xlen))];
 den = [((sec(theta(1:xlen)))-1)];
 d= [num.*den];
 mbd = (8*deltax/D.^2)* sum(x.*d);
end