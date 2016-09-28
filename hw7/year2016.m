function S = year2016(mm)
 if mm>0 & mm<=12 & isscalar(mm) & rem(mm,1)==0;
     
 year = 2016;

 days_month = [31 29 31 30 31 30 31 31 30 31 30 31];
 week_days  = [{'Sun'} {'Mon'}  {'Tue'}  {'Wed'} {'Thu'} {'Fri'} {'Sat'} ];
 month_names = [{'January'}, {'February'}, {'March'}, {'April'}, {'May'} ,{'June'}, {'July'}, {'August'}, {'September'}, {'October'}, {'November'}, {'December'} ];
 size(month_names);
 for n = 1:days_month(mm);
   %disp(char(month_names{mm}));
   ds = sprintf('%d-%s-%d',n,month_names{mm},year);
   wd = week_days{weekday(ds)};
   %disp(wd);
   S(n) = struct('month', month_names(mm) ,'date', n , 'day',wd );
 end
 else
     S=[];
 end
 
end