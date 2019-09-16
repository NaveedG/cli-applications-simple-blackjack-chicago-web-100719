def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
  card_total
end

def hit?(total)
  prompt_user
  user_input = get_user_input

  if user_input == 'h'
    new_card = deal_card
    return total += new_card
  elsif user_input == 's'
    return total
  else
    invalid_command
    prompt_user
    user_input = get_user_input
  end

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round

  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end

end_game(card_total)
end
