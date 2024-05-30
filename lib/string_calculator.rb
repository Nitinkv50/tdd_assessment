# lib/string_calculator.rb
# This is the class where we will create methods to add given strings
class StringCalculator
  def add(input)
    if input.start_with?("//")
      # Extract the delimiter and the numbers part
      parts = input.split("\n")
      delimiter = parts[0][2..-1] # Remove the leading "//"
      numbers = ""
      for a in 1...parts.size do
        if a > 1
          numbers << delimiter
        end
        numbers << parts[a]
      end
      numbers
    else
      # Default delimiter is comma or newline
      delimiter = ","
      numbers = input
    end
    # Split by the specified delimiter or default delimiters, convert to integers, and sum up
    numbers.split(/,|\n/).join(delimiter).split(delimiter).map(&:to_i).sum
  end
end