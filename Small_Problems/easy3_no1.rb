array = []

puts "Please enter the 1st number:"
array << gets.chomp.to_i
puts "Please enter the 2nd number:"
array << gets.chomp.to_i
puts "Please enter the 3rd number:"
array << gets.chomp.to_i
puts "Please enter the 4th number:"
array << gets.chomp.to_i
puts "Please enter the 5th number:"
array << gets.chomp.to_i
puts "Please enter the 6th number:"
array << gets.chomp.to_i


if array.include?(array[-1])
  puts "The number #{array[-1]} appears in #{array}."
else
  puts "The number #{array[-1]} does not appear in #{array}."
end
