function result = huge_add(string1 , string2)
        result = -1;
        if ~ischar(string1) | ~ischar(string2);
            result = -1;
        else
            disp(string1)
            disp(string2)
            num1 = str2num(string1);
            num2 = str2num(string2);
        
            if ~isempty(num1) & ~isempty(num2) & isscalar(num1) & isscalar(num2) & sign(num1)>=0 & sign(num2)>=0 & num1==fix(num1) & fix(num2)==num2
                %use the original character array and loop through the digits 
                result ='' ;
                carry_char = [];
                str1len = numel(string1);
                str2len = numel(string2);
                diff = abs(str2len - str1len);
                maxlen =  max(numel(string1), numel(string2));
                for(ii= 0:maxlen-1)
                     if(ii<numel(string1)) && (ii<numel(string2))
                        fprintf('1. Adding ... %s , %s , %s \n', string1(str1len -ii), string2(str2len -ii) ,carry_char);
                        add_result = add_chars(string1(str1len - ii), string2(str2len - ii),carry_char)
                     elseif(ii<str1len)
                        fprintf('1. Adding ... %s , %s \n', string1(str1len -ii) ,carry_char);
                        add_result = add_chars(string1(str1len - ii), [],carry_char)
                     
                     elseif(ii<str2len)
                        fprintf('1. Adding ... %s , %s  \n',  string2(str2len -ii) ,carry_char);
                        add_result = add_chars([], string2(str2len - ii),carry_char)
                     end
                     
                    if(length(add_result)>1)
                       carry_char = add_result(1:numel(add_result)-1);
                    else
                       carry_char=[];
                    end 
                    result = [ add_result(length(add_result)), result]; % append to the existing 
                    fprintf('Result=%s\n', result);
                end 
                if(~isempty(carry_char))
                    result = [carry_char, result];
                end
               
             else 
                result = -1;
            end
        end
        
       
        function addition=add_chars(char1, char2 , carry_over)
                 num1 = 0; num2 =0 ; carry=0;
                 
                 if(~isempty(carry_over))
                     carry = str2num(carry_over);
                 end
                 if(~isempty(char1)) 
                     num1 = str2num(char1);
                 end
                 if(~isempty(char2)) 
                     num2 = str2num(char2);
                 end
                 addition = num2str(num1 + num2 + carry);
                   
         end
end