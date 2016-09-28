function N= dial(input_string)

    buttons(1)= struct('num' , 0 , 'letters', []);
    buttons(2)= struct('num' , 1 , 'letters', []);
    buttons(3)= struct('num' , 2 , 'letters', ['A' 'B' 'C']);
    buttons(4)= struct('num' , 3 , 'letters', ['D' 'E' 'F']);
    buttons(5)= struct('num' , 4 , 'letters', ['G' 'H' 'I']);
    buttons(6)= struct('num' , 5 , 'letters', ['J' 'K' 'L']);
    buttons(7)= struct('num' , 6 , 'letters', ['M' 'N' 'O']);
    buttons(8)= struct('num' , 7 , 'letters', ['P' 'Q' 'R' 'S']);
    buttons(9)= struct('num' , 8 , 'letters', ['T' 'U' 'V']);
    buttons(10)= struct('num' , 9 , 'letters', ['W' 'X' 'Y' 'Z']);
    
    N = single(0);
    illegal_char = false; 
    
    for dx = 1:length(input_string)
        chr = input_string(dx);
        if ismember(str2num(chr), [0:9]);
           N = [N, chr]; %append 1/0 to N
           fprintf('found the %c \n', chr)
        elseif ismember(chr, ['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z']);
            for cidx = 1:length(buttons)
              if ismember(chr, buttons(cidx).letters);
                 fprintf('found the %c matching # as %d\n', chr, buttons(cidx).num );
                  N = [N, num2str(buttons(cidx).num)];
              end
            end
        else
            illegal_char=true;
            break;
        end
        
    end
    
    if ~illegal_char
        N = uint64(str2num(N));
    else
        N=uint64(0);
        
    end
 
end