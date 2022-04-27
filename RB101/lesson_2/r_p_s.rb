# Assignemt: Write a Rock, Paper, Scissors game.

VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
  (first == "paper" && second == "rock") ||
  (first == "scissors" && second == "paper") ||
  (first == "rock" && second == "lizard") ||
  (first == "lizard" && second == "spock") ||
  (first == "spock" && second == "scissors") ||
  (first == "scissors" && second == "lizard") ||
  (first == "lizard" && second == "paper") ||
  (first == "paper" && second == "spock") ||
  (first == "spock" && second == "rock")
end

def abbr(u_choice)
  case u_choice
  when "r"
    u_choice = "rock"
  when "p"
    u_choice = "paper"
  when "s"
    u_choice = "scissors"
  when "l"
    u_choice = "lizard"
  when "sp"
    u_choice = "spock"
  end
end

def display_results(player, computer)
  if win?(player, computer)
    p "You won!"
  elsif win?(computer, player)
    p "Computer won!"
  else
    p "It's a tie!"
  end
end

def display_final_results(player_wins, computer_wins)
  if player_wins == 3
    prompt("You're the grand winner!")
  elsif computer_wins == 3
    prompt("Computer's the grand winner!")
  end
end

  loop do

    player_win_count = 0
    computer_win_count = 0
    loop do
      choice = ""
      loop do
        prompt("Choose one: #{VALID_CHOICES.join(' ')}:")
        choice = gets.chomp
        choice = abbr(choice)

        if VALID_CHOICES.include?(choice)
          break
        else
          prompt("That's not a valid choice.")
        end
      end
    
      computer_choice = VALID_CHOICES.sample

      prompt("You chose #{choice}: Computer chose #{computer_choice}")

      score = display_results(choice, computer_choice)

      if score == "You won!"
        player_win_count += 1
        prompt("Player has won #{player_win_count} games.")
      elsif score == "Computer won!"
        computer_win_count += 1
        prompt("Player has won #{computer_win_count} games.")
      end

      display_final_results(player_win_count, computer_win_count)

      break if player_win_count == 3 || computer_win_count == 3
    end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Thank you for playing. Good bye!")
