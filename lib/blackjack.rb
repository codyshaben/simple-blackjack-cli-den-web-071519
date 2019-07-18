require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 card = rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  initial_cards = (deal_card + deal_card)
  display_card_total(initial_cards)
  initial_cards
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(total)
  prompt_user
  input =  get_user_input
  if input == "s"
    total
  elsif input == "h"
    total += deal_card 
  else
    invalid_command
  end
  total
end




#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  final_cards = initial_round
  welcome
  
  while final_cards <= 21 do
    final_cards = hit?(final_cards) 
    display_card_total(final_cards)
  end
  end_game(final_cards)
end




# binding.pry

 
