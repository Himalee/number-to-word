class NumberConverter
	def convert(number)
		number_in_words = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
			10 => "ten",
			11 => "eleven",
			12 => "twelve",
		  13 => "thirteen",              
		  14 => "fourteen",
			15 => "fifteen",
		  16 => "sixteen",
		  17 => "seventeen",
		  18 => "eighteen",
		  19 => "nineteen",
			20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety",
			1000 => "one thousand",
		}

		digits = number.digits.reverse

		if digits.count == 3 && digits[1] == 0 && digits[2] == 0	
			first_digit = digits[0]
			return "#{number_in_words[first_digit]} hundred"
		elsif number.between?(101, 109)
			last_digit = digits[2]
			return "one hundred and #{number_in_words[last_digit]}"
		elsif number.between?(110, 119)
			last_two_digits = digits.drop(1).join.to_i
			return "one hundred and #{number_in_words[last_two_digits]}"
		elsif digits.count == 3
			first_digit = digits[0]
			second_digit = digits[1]
			third_digit = digits[2]
			fourth_word = second_digit == 0 ? "" : number_in_words[second_digit*10]  + " "
			return "#{number_in_words[first_digit]} hundred and #{fourth_word}#{number_in_words[third_digit]}"
		elsif number > 20 && digits[1] != 0
			first_digit = digits[0]
			second_digit = digits[1]
			return "#{number_in_words[first_digit*10]}-#{number_in_words[second_digit]}"
		else
			return number_in_words[number]
		end
	end
end