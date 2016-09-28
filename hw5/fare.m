function pay = fare(dist, age)
    if dist<=1 
        pay = 2;
    elseif dist > 1 && dist < 10    
            pay = 2 + round(dist-1)*0.25;
    elseif dist >10 
            pay = 2+ 9*0.25 + round(dist-10)*0.10;
    end
    
    if(age>=60 || age<=18) 
         pay = 0.8*pay;
    end
end
