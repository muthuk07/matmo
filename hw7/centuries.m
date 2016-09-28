function roman_century = centuries(yyyy)
   roman_century='';
 
   if ~isscalar(yyyy) | yyyy<=0 | yyyy >3000 | yyyy ~=fix(yyyy)
    roman_century='';
   else
   century = fix(yyyy/100);
   
   if(mod(yyyy,100) ~=0) && yyyy~=0
       century = century + 1; % include the 100th,  200th, 300th ... 3000th years
   end 
   if(century >0) 
       %it must be between 1 and 29
       while(century>=10)
           roman_century = [roman_century, 'X'];
           century = century - 10;
       end
       while(century>=9)
           roman_century = [roman_century, 'IX'];
           century = century - 9;
       end
       while(century>=5)
           roman_century = [roman_century, 'V'];
           century = century - 5;
       end
       while(century>=4)
           roman_century = [roman_century, 'IV'];
           century = century - 4;
       end
       while(century>=1)
           roman_century = [roman_century, 'I'];
           century = century - 1;
       end
   else
       roman_century = 'I';
   end
   
   end
    
end