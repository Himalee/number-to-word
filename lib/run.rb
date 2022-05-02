require_relative 'number_converter'
require_relative 'input_validator'

number_converter = NumberConverter.new
input_validator = InputValidator.new

puts "Please enter a number between 1-1000. Enter 'stop' to stop application."
loop do
  user_input = gets.chomp.strip
  break if user_input == 'stop'

  output = if input_validator.within_range?(user_input, 1, 1000) && input_validator.number?(user_input)
             number_converter.convert(user_input.to_i)
           else
             'Invalid input'
           end
  puts output
end
