=begin 

P (understand the Problem):

  - inputs: 
    - loan amount
    - APR (annual percentage rate)
    - loan duration
  - outputs: 
    - monthly interest rate
    - loan duration in months
    - monthly payment

  - Rules:
    - prompt user to enter the inputs
      - loan amount
      - APR (! then convert it into monthly interest rate)
        - (loan amount / 12) * APR
      - loan duration (! then convert it into months)
        - loan duration / 12
    - process the input into the formula
    - print the outputs 
      - monthly interest rate
      - loan duration in month
      - monthly payment

E (Examples/test cases)
  formula: m = p * (j / (1 - (1 + j)**(-n)))


    - inputs: 100000, 5%, 10 years => outputs: 0.00416666..., 60, 1887.00

D (Data structure)
  - greetings
  - loop do 
    - ask for inputs
    - process inputs
    - print outputs
    - ask if more?
      - break if no
  - end
  - thank the user for using the calculator
    

A (Algorithm) PSEUDOCODE (see main file)

C (Code)