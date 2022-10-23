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
    
    @moves_1 = []
    @moves_2 = []

    @winning_combos = 
    [[1,2,3],
    [4,5,6],
    [7,8,9],
    [1,4,7],
    [2,5,8],
    [3,6,9],
    [1,5,9],
    [7,5,3],]
  end

  def start
    # display player names
    puts "New game started! #{@player_1} vs. #{@player_2}"
    #puts "To exit game at any point, type 'exit'"
    
  end

  def exit move
    if move == "exit"
      puts "Thank you for playing!"
    end
  end

  def occupied move
    if moves_1.include?(move.to_i) || moves_2.include(move.to_i)
      puts "Place is already occupied. Choose a different place:"
    end
  end

  def check_for_win moves
    @winning_combos.each do |combo|
      if (combo - moves).empty?
        puts "Congratulations! You win!"
      end
    end
  end


  def round
    if @moves_1.size = @moves_2.size 
      puts "#{@player_1} choose where to place an X:\n"

      move_x = gets.chomp

      exit move_x
      occupied move_x

      @moves_1.push(move_x.to_i).sort!
      check_for_win @moves_1

      round

    else
      puts "#{@player_2} choose where to place an O:\n"

      move_o = gets.chomp

      exit move_o
      occupied move_o

      @moves_2.push(move_o.to_i).sort!
      check_for_win @moves_2

      round
    end
    
  end

end

puts "What is Player 1's name?"
player_1 = gets.chomp

puts "What is Player 2's name?"
player_2 = gets.chomp


game = TicTacToe.new(player_1, player_2)
game.start