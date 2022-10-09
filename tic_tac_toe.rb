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
"\n   |   |   \n---|---|---\n   |   |   \n---|---|---\n   |   |   \n"

line_1 = "   |   |   \n"
line_2 = "---|---|---\n"

line_1a = [" "," "," ","|"," "," "," ","|"," "," "," ","\n"]
line_2a = ["-","-","-","|","-","-","-","|","-","-","-","\n"]


class Game
  include Board

  print "Who wants to play Tic Tac Toe?"
  print Board

  print "Player 1 (X):"
  gets player_1

  print "Player 2 (O):"
  gets player_2


  def initialize(player_1, player_2)
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
    print "#{@winning_player}, you have won! Congratulations!"
  end


# 
# turn taking logic (whose turn it is, what ends a turn, checking for win) 
# game logic first (how to choose where to move)
# mash game logic result into board, print


# maybe a class for the game itself, 2d array for lines 1
# all game logic can be 

