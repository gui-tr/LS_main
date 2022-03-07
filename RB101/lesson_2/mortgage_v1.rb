
#print greeting/welcome
puts "Hello! and welcome to the mortgage calculator!"

loop do
  #prompt user for loan amount and save in a variable
  puts "Please enter the loan amount."
  loan_amount = gets.chomp.to_i

  #prompt user for APR and save the input / 12 in a variable 
  puts "Please enter the APR (Annual Precentage Rate)."
  apr = gets.chomp
 
  #prompt user for loan duration and save the input * 12 in a variable 
  puts "Please enter the loan duration in years."
  loan_duration_in_months = gets.chomp.to_i * 12

  #run the formula with the variables associated to the inputs 
  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))

  binding.pry

  #print the monthly interest rate, loan duration in month & monthly payment to the console
  puts <<-MSG 
  Here are the results:
    > Your mortgage represents a monthly payment of GBP #{monthly_payment}, 
      for a duration of #{loan_duration_in_months} months, 
      at a monthly interest rate of #{apr / 12}.
  MSG

  #ask th user if he/she/they want to repeat the operation
  puts "Would you like to do a new calculation? (Y/N)"
  answer = gets.chomp
  break if answer.capitalize != "Y"
end

# thank the user for using the calculator
puts "Thank you for using the mortgage calculator!"