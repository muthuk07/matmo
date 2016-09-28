function overall_weekly_income = income(rate , price)
    % Author: Muthu Kumar 
    % 09/01/2016
    % function called  income takes
    % Inputs:  
    % two row vectors of the same length as input arguments. 
    % rate -  The first vector, contains the number of various products a company manufactures per hour simultaneously. 
    % price - The second vector, includes the corresponding per item price they sell the given products for. 
    % Output:
    % overall_income - function must return the overall income the company  generates in a week 

    % Assumptions:
    % assuming a 6 day work week and  two 8-hour long shifts per day
    % Note: demonstrates use of Array Multiplication 
    
    
    no_of_hr_per_shift = 8 ;
    no_of_shifts_per_day= 2;
    no_of_days_per_week= 6;
    
    no_of_hours_per_week = no_of_hr_per_shift*no_of_shifts_per_day*no_of_days_per_week;
    
    overall_weekly_income = sum((rate.*price)*no_of_hours_per_week); % notice  array multiplication operator... the dot*
    
end