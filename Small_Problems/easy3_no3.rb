puts "==>Please write word or multiple words:"
input = gets.chomp
chars = input.delete(" ").size
puts "There are #{chars} characters in '#{input}'"
