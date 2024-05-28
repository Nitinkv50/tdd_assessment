# lib/string_calculator.rb
# This is the class where we will create methods to add given strings
class StringCalculator
  def add(input)
    # First split the string by commas
    # then convert each part to an integer and then sum them up
    input.split(',').map(&:to_i).sum
  end
end