puts <<-MSG

-----------------------------------
WELCOME to the mortgage calculator!
-----------------------------------

MSG

def valid_amount_input(amount)
  amount.to_i.to_s == amount
end

def valid_apr_input(apr)
  apr.to_f.to_s == apr || apr.to_i.to_s == apr
end

def valid_duration_input(duration)
  duration.to_i.to_s == duration
end

loop do
  loan_amount = ""
  loop do
    puts "=> Please enter the loan amount:"
    loan_amount = gets.chomp
    if valid_amount_input(loan_amount)
      break
    else
      puts "=> Invalid input! (only valid numbers are accepted)"
    end
  end

  apr = ""
  loop do
    puts "=> Please enter the APR (Annual Precentage Rate):"
    apr = gets.chomp
    if valid_apr_input(apr)
      break
    else
      puts "=> Invalid input! (e.g 5 for 5.0%, 4.5 for 4.5%)"
    end
  end

  monthly_interest_rate = apr.to_f / 12.0 / 100

  loan_duration = ""
  loop do
    puts "=> Please enter the loan duration in years:"
    loan_duration = gets.chomp
    if valid_duration_input(loan_duration)
      break
    else
      puts "=> Invalid input! (e.g 5 for 5 years, 10 for 10 years)"
    end
  end

  loan_duration_in_months = loan_duration.to_i * 12
  monthly_payment = loan_amount.to_i * 
                    (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))

  puts <<-MSG

  Based on the information provided:
  ----------------------------------

  You would pay GBP #{monthly_payment.round(2)}/month, 
  for a duration of #{loan_duration_in_months} months.

  MSG
  puts "=> Would you like to make a new calculation? (Y/N)"
  answer = gets.chomp
  break if answer.capitalize != "Y"
end

puts <<-MSG

Thank you for using the mortgage calculator!

--------
GOODBYE!
--------

MSG
