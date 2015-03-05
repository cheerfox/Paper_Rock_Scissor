#Paper Rock Scissors game

def say(msg)
  puts "#{msg}"
end

def user_choose
  say "Choose P/R/S"
  gets.chomp
end

def computer_choose
  chooses = ['P', 'R', 'S']
  choose = chooses [rand(0..2)]
  say "Computer choose #{choose}"
  choose
end

def determine_the_winner(user, computer)
  if user == 'P' && computer == 'P'
    say "It's a Tie!!"
  elsif user == 'P' && computer == 'R'
    say "You Win!!"
  elsif user == 'P' && computer == 'S'
    say "You Lose!!"
  elsif user == 'S' && computer == 'S'
    say "It's a Tie!!"
  elsif user == 'S' && computer == 'P'
    say "You Win!!"
  elsif user == 'S' && computer == 'R'
    say "You Lose!!" 
  elsif user == 'R' && computer == 'R'
    say "It's a Tie!!"
  elsif user == 'R' && computer == 'S'
    say "You Win!!"
  elsif user == 'R' && computer == 'P'
    say "You Lose!!"
  end
end

say "Welcome to play Papper, Rock, Scissors!!"
begin
  determine_the_winner(user_choose, computer_choose)
  say "Play again?? Y/N"
  leave = true if gets.chomp == 'N'
end while !leave






