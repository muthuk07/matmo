function Te = pendulum(rlen, rangle)
   micro_sec = 1e-6;
   g_force = 9.8;
   theta=rangle;
   omega=0;
   Te=0;
 
   if(rangle>0)&&(rlen>0)
       while(theta >=0)
          alpha =   (-1)*g_force*(sin(theta))/rlen;
          omega = omega + alpha*micro_sec;
           theta = theta + omega*micro_sec ;
           %fprintf(' Alpha: %f , Theta: %f, Time Elapsed: %d\n', alpha, theta, Te);
           Te = Te + micro_sec;
       end
   end 
   Te=4*Te;

    
end