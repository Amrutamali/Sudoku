class InvalidNumError < StandardError;end
require './validate_input.rb'

module ValidateInput
  def input_check(str)
    begin
      print "Enter the  "+str+" between 1 to 9\t"
      row = gets.chomp
     raise( StandardError, "Number is not in range") if( !row.to_i.between?(1,9) )
    rescue StandardError=>e
      puts e
      retry
    end
  end

end
