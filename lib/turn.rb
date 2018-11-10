def input_to_index(input)
  index= input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0, 8) && !(position_taken?(board, index))
end

def move(array, index, name = "X")
  array[index] = name
end
#if index is valid...show the board
def position_taken?(board, answer)
  board[answer] != " "
end

def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#this method need to be developed ________________
def turn(board)
    puts "Please enter 1-9:"
    answer = gets.chomp
    answer = input_to_index(answer)
    if valid_move?(answer, board) && answer.between?(0,8)
      move(board, answer)
      puts display_board(board)
    else
      puts "That is an invalid entry!"
      turn(board)
    end
end
