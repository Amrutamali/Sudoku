require './game_class.rb'
class Player
  @@row;@@col

  def get_input
    @@row = gets.to_i
    @@col = gets.to_i
  end

  def put
    puts @@row,@@col
  end

  def valiate_input()
    puts "in val"
  end

  def play
     
  end

end

p = Player.new
p.get_input
p.put
#a=Sudoku.new

