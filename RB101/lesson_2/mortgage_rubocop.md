wifi:lesson_2 guitrionfo$ rubocop mortgage_final.rb
Inspecting 1 file
C

Offenses:

mortgage_final.rb:1:12: C: Layout/TrailingWhitespace: Trailing whitespace detected. (https://rubystyle.guide/#no-trailing-whitespace)
puts <<-MSG 
           ^
mortgage_final.rb:13:5: C: Naming/MethodName: Use snake_case for method names. (https://rubystyle.guide/#snake-case-symbols-methods-vars)
def valid_APR_input(apr)
    ^^^^^^^^^^^^^^^
mortgage_final.rb:58:81: C: Layout/LineLength: Line is too long. [126/80] (https://rubystyle.guide/#80-character-limits)
  monthly_payment = loan_amount.to_i * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))
                                                                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
mortgage_final.rb:60:14: C: Layout/TrailingWhitespace: Trailing whitespace detected. (https://rubystyle.guide/#no-trailing-whitespace)
  puts <<-MSG 
             ^
mortgage_final.rb:74:12: C: Layout/TrailingWhitespace: Trailing whitespace detected. (https://rubystyle.guide/#no-trailing-whitespace)
puts <<-MSG 
           ^
mortgage_final.rb:82:4: C: Layout/TrailingEmptyLines: Final newline missing. (https://rubystyle.guide/#newline-eof)
MSG
   

1 file inspected, 6 offenses detected