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
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety",
			100 => "one hundred",
		}

		digits = number.digits.reverse

		if number == 15
			return "fifteen"
		elsif number.between?(13, 19)
			second_digit = digits[1]
			return "#{number_in_words[second_digit]}teen"
		elsif number > 20 && digits[1] != 0
			first_digit = digits[0]
			second_digit = digits[1]
			"#{number_in_words[first_digit*10]}-#{number_in_words[second_digit]}"
		else
			return number_in_words[number]
		end
	end
end