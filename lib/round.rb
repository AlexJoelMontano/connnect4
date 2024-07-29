require_relative 'new_board'

class Round

  def initialize
    @choices = Array.new(2)
    @slotted_row = (1..7).to_a
    @rows_letters = ('a'..'f').to_a
    @values = (0..6).to_a
    @current_grid = Array.new(6)
    @pointer
  end

  def choice
    puts 'Choose the column'
    col = gets.chomp.to_i
    puts 'Choose the row'
    row = gets.chomp

    if col == 0 || col > 7
      puts 'Please choose a number between 1 and 7 for the column'
      col = gets.chomp.to_i
    else
      @choices[0] = col
    end

    invalid_letters = ('g'..'z').to_a.join('c')
    if row.include?(invalid_letters)
      puts 'Please choose a letter between a and f for the row'
    else
      @choices[1] = row
    end
    return @choices.join('')
  end

  def new_rows(choice_slot, value)

    @slotted_row.each_with_index do |slot,index|

      if choice_slot == @slotted_row[index]
        @slotted_row[index] = "< \u26c0  >"
      else
        @slotted_row[index] = "< #{index+1}#{@rows_letters[@values[value]]} >"
      end

    end
  end

  def convert
    @pointer = 0
    @rows_letters.each_with_index do |letter,index|

      if @rows_letters[index].to_s == @choices[1].to_s
        return @pointer
      else
        @pointer += 1
      end

    end
  end

  def current_board
    number = 0
    col_choice = @choices[0]
    row_choice = @choices[1]
    convert

    @current_grid.each_with_index do |row,index|

      if @pointer == index
        puts''
        print @current_grid[index] = new_rows(col_choice.to_i,number).join(' | ')
        puts ''
      else
        puts''
        print @current_grid[index] = new_rows(col_choice,number).join(' | ')
        puts ''
      end
      number += 1
    end
  end

end
game = Round.new
game.choice
game.current_board
