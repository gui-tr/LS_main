def prompt(message)
  puts ">> #{message}"
end

def valid_user_choice(choice)
  choice.downcase.include?('s') || choice.downcase.include?('p')
end

def sum(int)
  1.upto(int).sum
end

def product(int)
  1.upto(int).inject(:*)
end

loop do
  prompt("Please enter an integer greater than 0:")
  integer = gets.chomp.to_i

  user_choice = ""
  loop do
    prompt("Enter 's' to compute the sum, 'p' to compute the product.")
    user_choice = gets.chomp
    break if valid_user_choice(user_choice)
    prompt("Not valid. Enter either 's' or 'p'.")
  end

  if user_choice == "s"
    prompt("The sum of the integers between 1 and #{integer} is #{sum(integer)}")
  elsif user_choice == "p"
    prompt("The product of the integers between 1 and #{integer} is #{product(integer)}")
  end

  prompt("Would you like to perform another operation?")
  answer = gets.chomp
  break if answer.downcase.start_with?("n")
end

prompt("Thank you!")