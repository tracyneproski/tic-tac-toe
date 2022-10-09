# Odin Project Tic Tac Toe Game

# Build a tic-tac-toe game on the command line where two human players 
# can play against each other and the board is displayed in between turns.

# Think about how you would set up the different elements within the game… 
# What should be a class? Instance variable? Method? A few minutes of thought 
# can save you from wasting an hour of coding.

# Build your game, taking care to not share information between classes any 
# more than you have to.

module Board
  #board?
"
   |   |   
---|---|---
   |   |   
---|---|---
   |   |   
"  

"
 1 | 2 | 3 
---|---|---
 4 | 5 | 6  
---|---|---
 7 | 8 | 9 
" 

"
row 1 ->    |   |   
         ---|---|---
row 2 ->    |   |   
         ---|---|---
row 3 ->    |   |   
" 

"
         col col col
          a   b   c
          |   |   |
          v   v   v
row 1 ->    |   |   
         ---|---|---
row 2 ->    |   |   
         ---|---|---
row 3 ->    |   |   
" 
coord_board = "\n         col col col\n          a   b   c\n          |   |   |\n          v   v   v\nrow 1 ->    |   |   \n         ---|---|---\nrow 2 ->    |   |   \n         ---|---|---\nrow 3 ->    |   |   \n"

"\n   |   |   \n---|---|---\n   |   |   \n---|---|---\n   |   |   \n"

line_1 = "   |   |   \n"
line_2 = "---|---|---\n"

line_1a = [" "," "," ","|"," "," "," ","|"," "," "," ","\n"]
line_2a = ["-","-","-","|","-","-","-","|","-","-","-","\n"]


class Game
  include Board

  def initialize(player_1, player_2)
    print "Who wants to play Tic Tac Toe?"
    print Board

    print "Player 1 (X):"
    gets player_1
  
    print "Player 2 (O):"
    gets player_2

    @player_1 = player_1
    @player_2 = player_2
  end



  def turn
    #which player
    #choose location
    #reprint board
    #check for win
    #if no win, print next {player}
    #if win, set @winning_player, print winning_statement
  end

  def winning_statement
    print "\n#{@winning_player}, you have won! Congratulations!"    
  end

  def instructions
    print "\nUsing coordinates ('1a' for the topmost left square, for example), 
two players take turns marking the spaces in a three-by-three grid 
with X or O. The player who succeeds in placing three of their marks 
in a horizontal, vertical, or diagonal row is the winner. If no row 
can be completed, and there are no more empty spaces, the game ends 
in a draw.\n"
  end

# 
# turn taking logic (whose turn it is, what ends a turn, checking for win) 
# mash game logic result into board, print


# maybe a class for the game itself, 2d array for lines 1
# all game logic can be 

