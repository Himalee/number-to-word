require_relative 'number_converter'
require_relative 'input_validator'

number_converter = NumberConverter.new
input_validator = InputValidator.new

puts "Please enter a number between 1-1000. Enter 'stop' to stop application."
loop do
	user_input = gets.chomp.strip
	if user_input == "stop"
		break
	else 
		output = (input_validator.is_within_range(user_input, 1, 1000) && input_validator.is_number?(user_input)) ? number_converter.convert(user_input.to_i) : "Invalid input" 
		puts output
	end	
end