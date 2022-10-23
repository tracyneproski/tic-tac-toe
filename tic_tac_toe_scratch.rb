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

"

       a   b   c
       |   |   |
       v   v   v
1 ->     |   |   
      ---|---|---
2 ->     |   |   
      ---|---|---
3 ->     |   |   
" 

coord_board = "       a   b   c\n       |   |   |\n       v   v   v\n1 ->     |   |   \n      ---|---|---\n2 ->     |   |   \n      ---|---|---\n3 ->     |   |   \n"


old_coord_board = "\n         col col col\n          a   b   c\n          |   |   |\n          v   v   v\nrow 1 ->    |   |   \n         ---|---|---\nrow 2 ->    |   |   \n         ---|---|---\nrow 3 ->    |   |   \n"

"\n   |   |   \n---|---|---\n   |   |   \n---|---|---\n   |   |   \n"

line_1 = "   |   |   \n"
line_2 = "---|---|---\n"

cols = ["       a   b   c\n"]
arrows_1 = ["       |   |   |\n"]
arrows_2 = ["       v   v   v\n"]
row_1 = ["1  ->  "," "," | "," "," | "," "," \n"]
hz_line = ["      ---|---|---\n"]
row_2 = ["2  ->  "," "," | "," "," | "," "," \n"]
row_3 = ["3  ->  "," "," | "," "," | "," "," \n"]

full_board = cols.join + arrows_1.join + arrows_2.join + row_1.join + hz_line.join + row_2.join + hz_line.join + row_3.join


moves = [[],[],[]]

winning_combos 
[
  [1,2,3],
  [4,5,6],
  [7,8,9],
  [1,4,7],
  [2,5,8],
  [3,6,9],
  [1,5,9],
  [7,5,3],
]

board_locations
if gets = "1a or 1A", move = 1, location = row_1[1]

[
["1a",1,@row_1[1]]
["1b",2,@row_1[3]]
["1c",3,@row_1[5]]
["2a",4,@row_2[1]]
["2b",5,@row_2[3]]
["2c",6,@row_2[5]]
["3a",7,@row_3[1]]
["3b",8,@row_3[3]]
["3c",9,@row_3[5]]
]

equivalent = 
    [["1a",1,row_1[1]],
      ["1b",2,row_1[3]],
      ["1c",3,row_1[5]],
      ["2a",4,row_2[1]],
      ["2b",5,row_2[3]],
      ["2c",6,row_2[5]],
      ["3a",7,row_3[1]],
      ["3b",8,row_3[3]],
      ["3c",9,row_3[5]]]

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

# player should be its own class so you can store the player name and reference it
# during the game. Also, you can set player_1 and player_2 TO the player class
# so you know whether to put an X or an O.


# maybe a class for the game itself, 2d array for lines 1
# all game logic can be 

'''
class Computer
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[:username] = password
  end

  def create(filename)
    time = Time.now
    @files[:filename] = time
    puts "#{@username} created #{filename} at #{time}."
  end

  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("bently", 1234)
'''

Ducky:

start game
whose turn (1)
choose placement
  check if exit
  check if occupied
otherwise add to player 1 guesses
  check if win
win means print and end
not win means turn for player 2

whose turn (2)
chose placement
  check if exit
  check if occupied
otherwise add to player 2 guesses
  check if win
  win means print and end
not win means turn for player 1