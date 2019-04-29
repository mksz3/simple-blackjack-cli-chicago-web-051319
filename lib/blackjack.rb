def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times {
    sum += deal_card
  }
  print display_card_total(sum)
  return sum
end

def hit?(total)
  prompt_user
  choice = get_user_input
  choice == "h" ? total += deal_card : total += 0
  return total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 total = initial_round
  until total > 21 
    display_card_total(total)
    total += hit?(total)
  end
end_game(total)
end
  