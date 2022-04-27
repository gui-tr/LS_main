# This is a draft!! Not finished yet.


def time_of_day(min)
  minutes = 0
  hours = 0
  

    loop do
      min -= 1
      minutes += 1
      if minutes % 60 == 0
        hours += 1
        minutes -= 60
      end
      
      break if min == 0
    end
    
    sprintf("%#o", hours)  #=> "0173
    
    p minutes 
    p hours
    
    p "#{sprintf("%#o", minutes)}:#{sprintf("%#o", hours)}"

end


time_of_day(92)