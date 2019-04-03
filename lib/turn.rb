def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, integer)
  if board[integer] == " " || board[integer] == "" || board[integer] == nil
   false
  elsif board[integer] == "X" || board[integer] == "O"
   true
  end
end

def valid_move?(board, index)
  if (index < 0 || index > 8)
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end



def move(board, position, character="X")
   board[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
<<<<<<< HEAD
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
=======
  input_to_index(user_input)
  if valid_move?(board, index)
    true
  end
>>>>>>> 0682d522b6a505891fccb38c2e1d0d7ad3bd0700
end
