function N = day_diff(mm1, dd1 , mm2, dd2)
    month_days = [31,28,31,30,31,30,31,31,30,31,30,31];
    valid_dates  = [1:31];
    valid_months = [1:12];
    mm = [mm1, mm2];
    dd = [dd1, dd2];
    if ~isscalar(mm1)||~isscalar(mm2)||~isscalar(dd1)||~isscalar(dd2)
        N = -1;
    elseif sum(ismember(mm,valid_months)==0)|| sum(ismember(dd,valid_dates)==0)
       N = -1;
    elseif  dd1>month_days(mm1) || dd2>month_days(mm2)
        N = -1;
    else   
        N1 = sum(month_days(1:(mm1-1))) + dd1 ;
        N2 = sum(month_days(1:(mm2-1))) + dd2 ;
        N = abs(N2-N1);
    end
end