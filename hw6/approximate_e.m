function [summe n] = approximate_e(delta)
    n=2;
    euler(1) = 1;
    euler(2) = 1;
    summe = sum(euler(:));
    
    while(abs(exp(1)-summe) >= delta)
          euler(n+1) =  1/fact(n) ;
          summe = sum(euler(1:(n+1)) );
          %fprintf('%d - %f\n',n,summe);
          n=n+1;
    end
    summe = sum(euler(1:n));
    n=n-1; %decrementing the last n...
   %fprintf('ANSWER: %d - %f\n',n,summe);
    
    function F=fact(n)
             F = prod(1:n);
    end
  
end