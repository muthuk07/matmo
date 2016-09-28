function value = day_counter( yyyy)
 day_of_week = {'Sunday' , 'Monday' , 'Tuesday', 'Wednesday', 'Thursday' ,'Friday' ,'Saturday' };
 month_of_year= {'Jan' , 'Feb', 'Mar' , 'Apr' , 'May','Jun', 'Jul', 'Aug' , 'Sep', 'Oct', 'Nov', 'Dec'};
 month=1;
 value=0;
 if(yyyy<1776 || yyyy> 2016) 
     error ('error input year ');
 end
 while(month<=12)
      day = 0;
      start_day = strcat('01','-' ,month_of_year{month},'-',num2str(yyyy));
      day = weekday(start_day);
      %if day==1
       fprintf('%s starts on %s , \n', start_day, day_of_week{day}); 
      %end
      if(day ==2)
         value=value+1;
      end
      month=month+1;
 end
 value = double(value);
 
end
