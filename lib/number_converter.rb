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
			15 => "fifteen",
			20 => "twenty",
		}

		if number == 15
			return "fifteen"
		elsif number.between?(13, 19)
			first_digit = number.digits[0]
			return "#{number_in_words[first_digit]}teen"
		else
			return number_in_words[number]
		end
	end
end