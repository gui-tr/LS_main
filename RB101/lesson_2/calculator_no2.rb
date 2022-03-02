require 'yaml'
MESSAGES = YAML.load_file("calculator_messages.yml")

def prompt(message, lang='en')
  Kernel.puts("=> #{message}")
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(messages("welcome", "en"))

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(messages("valid_name", "en"))
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # main loop

  number1 = ''
  loop do
    prompt(messages("first_no", "en"))
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end

  number2 = ''
  loop do
    prompt(messages("second_no", "en"))
    number2 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt(messages("not_valid", "en"))
    end
  end

  prompt(messages("operation", "en"))

  operator = ''

  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              number1.to_i() + number2.to_i()
            when '2'
              number1.to_i() - number2.to_i()
            when '3'
              number1.to_i() * number2.to_i()
            when '4'
              number1.to_f() / number2.to_f()
            end

  prompt("The result is #{result}")

  prompt(messages("more_cal", "en"))

  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt(messages("thanks", "en"))