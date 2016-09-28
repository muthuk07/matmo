function result=smallest_multiple(num)
     result=uint64(1);
     
     for ii = 2:num
         summa = result;
         while(mod(uint64(summa), uint64(ii)) ~=0)
              summa = uint64(summa)+uint64(result);
              if(summa==intmax('uint64'))
                  result = uint64(0);
                  break;
              end
              
          end
          result = summa;
     end 
 
     if  result ==  intmax('uint64'); %overflowed ....
         result=uint64(0);
         
     else result = uint64(result);
          
     end
 
end