WIN_COMBINATIONS = [  
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  # Helper Method
  
  def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
  def input_to_index(user_input)
user_input.to_i - 1
end

def move(board, index, player = "X")
board[index] = player
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
  
  def current_player(board)
  if turn_count(board).even? 
    return "X"
    else 
    return "O"
  end
end 
  
  def turn_count(board)
  counter = 0
  board.each do |position|
    if position == "X" || position == "O"
      counter += 1 
     end
   end
   counter
end



  def valid_move?(board, index) 
<<<<<<< HEAD
  if position_taken?(board, index) && index.between?(0, 8) 
=======
  if position_taken?(board, index)  == true && index.between?(0, 8) == false
>>>>>>> 15afd4bcfe4919ca72a6ab246c0a0080e9dc733d
    return false
elsif position_taken?(board, index)  == false && index.between?(0, 8) == true
 return true
end
end

  
  


def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
  board[win_combination[0]] == board[win_combination[1]] &&
  board[win_combination[1]] == board[win_combination[2]] &&
  position_taken?(board, win_combination[0])
  end
end 


 def full?(board)
    board.all? {|full_board| full_board == "X" || full_board== "O" }
 end
 
 def draw?(board)
   full?(board) && !won?(board)
 end
 
 def over?(board) 
  draw?(board) || won?(board)
 end
 
 def winner(board) 
   #binding.pry
   win_combination = won?(board)
   if won?(board) 
    board[win_combination[0]]
   end
 end 

