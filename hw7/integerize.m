function asm = integerize(A)
    asize = size(A(:));
    integer_8  = 'int8';
    integer_16 = 'int16';
    integer_32 = 'int32';
    integer_64 = 'int64';
    
    asm='NONE';

    if (asize== size(A(A==int8(A)))) |  (asize== size(A(A==int8(A))'))
                asm=integer_8;

    elseif (asize== size(A(A==int16(A)))) |  (asize== size(A(A==int16(A))'))
                asm=integer_16;

    elseif (asize== size(A(A==int32(A)))) |  (asize== size(A(A==int32(A))'))
                asm=integer_32;

    elseif (asize== size(A(A==int64(A)))) |  (asize== size(A(A==int64(A))'))
                asm=integer_64;
    else
        asm='NONE';
    end
    
end