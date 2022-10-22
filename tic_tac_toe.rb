# Odin Project Tic Tac Toe Game

# Build a tic-tac-toe game on the command line where two human players 
# can play against each other and the board is displayed in between turns.

# Think about how you would set up the different elements within the game… 
# What should be a class? Instance variable? Method? A few minutes of thought 
# can save you from wasting an hour of coding.

# Build your game, taking care to not share information between classes any 
# more than you have to.

class TicTacToe

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def start
    # display player names
    puts "New game started! #{@player_1} vs. #{@player_2}"
    #puts "To exit game at any point, type 'exit'"
    

    
  end

end

puts "What is Player 1's name?"
player_1 = gets.chomp

puts "What is Player 2's name?"
player_2 = gets.chomp


game = TicTacToe.new(player_1, player_2)
game.start