#Paper Rock Scissors game 

CHOICES = {'p' => 'Paper','r' => 'Rock', 's' => 'Scissors'}

def say(msg)
  puts "#{msg}"
end

def user_choose
  begin
    say "Choose P/R/S for Paper/Rock/Scissors"
    user_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(user_choice)
  say "You choose #{CHOICES[user_choice]}"
  user_choice
end

def computer_choose
  computer_choice = CHOICES.keys.sample
  say "Computer choose #{CHOICES[computer_choice]}"
  computer_choice
end

def determine_the_winner(user_choice, computer_choice)
  if user_choice == computer_choice
    say "It's tie!!"
  elsif user_choice == 'p' && computer_choice == 'r'|| user_choice == 's' && computer_choice == 'p'|| user_choice == 'r' && computer_choice == 's'
    say "You Win!!"
  else 
    say "You Lose!!"
  end
end

say "Welcome to play Paper, Rock, Scissors!!"
loop do
  determine_the_winner(user_choose, computer_choose)
  say "Play again?? Y/N"
  break if gets.chomp.downcase == 'n'
end






