
class Game

  def initialize
    @row_array = Array.new(7)
    @rows_letters = ['a','b','c','d','e','f','g']
    @values = [0,1,2,3,4,5,6]
    @board = Array.new(7)
  end

  def row_values(value)
    @row_array.each_with_index do |letter,index|
      @row_array[index] = "#{index}#{@rows_letters[@values[value]]}"
    end
    @row_array
  end

  def grid
    number = 0

    @board.each_with_index do |row,index|
      @board[index] = row_values(number)
      number += 1
    end
  end
end
