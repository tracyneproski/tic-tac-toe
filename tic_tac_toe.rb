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

    @row_1 = ["1  ->  "," "," | "," "," | "," "," \n"]
    @row_2 = ["2  ->  "," "," | "," "," | "," "," \n"]
    @row_3 = ["3  ->  "," "," | "," "," | "," "," \n\n"]

    @equivalent = 
    [["1a", 1],
      ["1b", 2],
      ["1c", 3],
      ["2a", 4],
      ["2b", 5],
      ["2c", 6],
      ["3a", 7],
      ["3b", 8],
      ["3c", 9]]

  end

  def start
    # display player names
    puts "New game started! #{@player_1} vs. #{@player_2}\n\n"
    #puts "To exit game at any point, type 'exit'"
    round
  end

  def quit_check move
    if move == "quit"
      puts "Thanks for playing!"
      exit
    end
  end

  def occupied move
    if @moves_1.include?(move.to_i) || @moves_2.include?(move.to_i)
      puts "Place is already occupied. Choose a different place:"
      round
    end
  end

  def play_again_check
    puts "Play again? Y or N\n"
    
    play_again = gets.chomp

    if play_again == "y" || play_again == "Y" 
      game = TicTacToe.new(@player_1, @player_2)
      game.start
    elsif play_again == "n" || play_again == "N"
      puts "Thanks for playing!"
      exit
    else
      puts "Response not recognized. Please enter Y or N"
      play_again_check
    end
  end

  def win_check(moves, player)
    @winning_combos.each do |combo|
      if (combo - moves).empty?
        board
        puts "Congratulations, #{player}! You win!"

        play_again_check    

      end
    end  
  end 

  def board
    cols = "       a   b   c\n"
    arrows_1 = "       |   |   |\n"
    arrows_2 = "       v   v   v\n"
    hz_line = "      ---|---|---\n"
    
    full_board = cols + arrows_1 + arrows_2 + @row_1.join + hz_line + @row_2.join + hz_line + @row_3.join
    puts full_board
  end

  def move_convert(move)
    if @equivalent.find{|coord, value, display| coord.include?(move)}
      return @equivalent.find{|coord, value, display| coord == move.downcase}[1]
    else
      puts "Response not recognized. Please enter a valid coordinate. Ex: '1a'"
      round
    end
  end


  def update_board(space,letter)
    if space == 1
      @row_1[1] = letter
    elsif space == 2
      @row_1[3] = letter
    elsif space == 3
      @row_1[5] = letter
    elsif space == 4
      @row_2[1] = letter
    elsif space == 5
      @row_2[3] = letter
    elsif space == 6
      @row_2[5] = letter
    elsif space == 7
      @row_3[1] = letter
    elsif space == 8
      @row_3[3] = letter
    else space == 9
      @row_3[5] = letter
    end                            
  end


  def round

    if (@moves_1.size + @moves_2.size) < 9

      win_check(@moves_1, @player_1)
      win_check(@moves_2, @player_2)

      if @moves_1.size == @moves_2.size
        board  
        puts "#{@player_1} choose where to place an X:\n"
        move_x = gets.chomp
        turn(move_x, @moves_1, "X")
        round
      else
        board
        puts "#{@player_2} choose where to place an O:\n"        
        move_o = gets.chomp
        turn(move_o, @moves_2, "O")
        round
      end
         
    else
      puts "Game is a tie."
      exit
    end
  end

  def turn(move, moves, letter)
   
    quit_check move
    
    move = move_convert(move)

    if move.to_i.between?(1,9) 
      occupied move
      moves.push(move.to_i).sort!
      update_board(move, letter)
    else
      puts "Response not recognized. Please try again."
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