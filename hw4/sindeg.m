function [ Wsine , Wavg] = sindeg(deg)
    
     Wsine   = sin(deg*(pi/180.0)); 
     Wavg    = mean(Wsine(:));
end

