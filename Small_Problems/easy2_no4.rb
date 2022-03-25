puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire = gets.chomp.to_i

current_year = Time.new.year
years_to_go = retire - age
retirement_year = current_year + years_to_go

puts <<-MSG 
It's #{current_year}.
You have only #{years_to_go} years of work to go!
You will retire in #{retirement_year}.
MSG
