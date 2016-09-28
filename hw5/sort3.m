function [av1 , av2,  av3] = sort3(v1)
 av1 = v1(1);
 av2 = v1(2);
 av3 = v1(3);
 
 if(av1>av2) [av1 av2]  = swap (av1, av2);
 end
 
 if(av2>av3) [av2 av3]  = swap (av2, av3);
 end
 
 if(av1>av2) [av1 av2]  = swap (av1, av2); 
 end
end
 
    
 function [v1 , v2] = swap(v1 , v2)
    % fprintf('Swapping %d , %d\n', v1, v2);
    temp = v2;
    v2 = v1;
    v1 = temp;
 end
 


