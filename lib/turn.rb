def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  def position_taken?(board, index,value = "X")
    if index.between(0,8) && board[index] != ("X" && "O")
      return true
      else return false
  end
end
if position_taken?= 
  end
end
end
