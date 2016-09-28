function letters = number2letters(nnn)
    
ones_string = {'one' , 'two' , 'three' , 'four', 'five','six','seven', 'eight' , 'nine' , 'ten', 'eleven' , 'twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen','twenty'};
tens_string = {'ten','twenty','thirty', 'forty','fifty','sixty','seventy','eighty','ninety'};
hundred_string  = {'hundred'};
thousand_string  = {'thousand'};


letters = [];
input = int16(nnn);

if(input>0)
    units = mod (input,10);
    if(units>0)
        fprintf(' Units : %s\n' , ones_string{units});
        letters = [letters, ones_string{units}];
    end
    input = idivide(int16(input),int16(10),'floor');
    if(input>0)
        tens = mod (int16(input), int16(10));
        if(tens==1)
            letters =[];%empty the letters
            letters = [ ones_string{units+tens*10},letters];
            fprintf(' Added :  %s\n' , ones_string{tens*10 + units});
        elseif(tens>1)
            letters = [ tens_string{tens},letters];
            fprintf(' Tens :  %s\n' , tens_string{tens});
        end
         input = idivide(int16(input),int16(10),'floor');
    end
end


if(input>0)
    hundreds = mod (int16(input), int16(10));
    if(hundreds>0)
        letters = [hundred_string{1},letters ];  
        letters = [ones_string{hundreds} , letters];   
        fprintf(' Hundreds : %s %s\n' ,ones_string{hundreds} ,hundred_string{1});
    end
    input = idivide(int16(input),int16(10),'floor');
     
end

if(input>0)
    thousands = mod (int16(input), int16(10));  
    if(thousands>0)
        letters = [thousand_string{1}, letters]; 
        letters = [ones_string{thousands},letters ]; 
        fprintf(' Thousands : %s %s' ,ones_string{thousands} ,thousand_string{1});
    end
     input = idivide(int16(input),int16(10),'floor');
end
    disp(letters);
    letters = numel(letters) ;
end

