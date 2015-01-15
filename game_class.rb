

require './validate_input.rb'
#class InvalidNumberError < StandardError; end


class Sudoku
  @@sudoku_arr = [[0,8,0,0,2,0,0,3,0],[0,0,2,0,6,0,0,1,7],[0,0,0,0,0,0,4,0,0],
                  [0,0,5,0,0,9,0,8,0],[3,0,0,6,0,8,0,0,1],[0,9,0,1,0,0,2,0,0],
                  [0,0,6,0,0,0,0,0,0],[2,4,0,0,8,0,5,0,0],[0,3,0,0,5,0,0,6,0]]

  attr_accessor :row, :col

  #private :row_col_check?, :submatrix_check?
private
  def row_col_check?(row, col, value)
    puts"////////////////////////////"
    return false if(@@sudoku_arr[row].include?(value) || 
                    @@sudoku_arr.transpose[col].include?(value))
#    submatrix_check?(row,col,value)
  end
=begin
  def submatrix_check?( row, col, value )
    (row...row + 3).each{|row| (col...col + 3).each{|col| 
      return false if(@@sudoku_arr[row][col] == value)}}
    return(true)
  end
=end
public
  def self.insert(row, col, value)
    puts"...................."
    @@sudoku_arr[row][col] = value if(row_col_check?( row, col, value)) #&& submatrix_check?( row, col, value))
  end

  def display
    @@sudoku_arr.each {|row| puts "#{row.join "  "}\n"}
  end
end

##################
class Player 
  include ValidateInput

  @@row;@@col;@@value

  def input
    @@row = input_check("row") 
    @@col = input_check("col")
    @@value = input_check("value")
   # @@row-=1
   # @@col-=1
    a = Sudoku.new
    Sudoku.insert(@@row, @@col, @@value)
    a.display
  end

  def play
    input
  end
end



#a = Sudoku.new
#a.row = 0
#a.col = 0
#a.insert(a.row, a.col,1)
#
#a.display


p = Player.new
p.play

