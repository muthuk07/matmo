function summn=digit_counter(f)
 summn =-1;
 fid = fopen(f, 'r');
 if(fid<0) 
     summn = -1;
 else 
     chars  = fread(fid, '*char');
     isnum = ismember(chars,'0':'9');
     summn = sum(isnum);
     fclose(fid); 
 end
  
end