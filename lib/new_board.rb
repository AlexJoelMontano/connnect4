
class Board

  def initialize
    @row_array = Array.new(7)
    @rows_letters = ['A','B','C','D','E','F','G']
    @values = [0,1,2,3,4,5,6]
    @board = Array.new(6)
  end

  def init_row_values(value)
    @row_array.each_with_index do |letter,index|
      @row_array[index] = "< #{index+1}#{@rows_letters[@values[value]]} >"
    end
    @row_array
  end

  def new_board
    number = 0

    @board.each_with_index do |row,index|
      print @board[index] = init_row_values(number).join(' | ')
      puts''
      puts '------------------------------------------------------------'
      number += 1
    end
  end
end
