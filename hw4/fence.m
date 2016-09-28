function [ no_seg no_poles ] = fence(len, seg)
%no of poles would always be 1 more than the no of segments
len = uint32(len);
seg = uint32(seg);
no_seg = idivide(len,seg,'ceil');
no_poles = no_seg+1;  
end
