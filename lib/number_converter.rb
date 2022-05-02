class NumberConverter
  NUMBER_IN_WORDS = {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
    1000 => 'one thousand'
  }.freeze

  def convert(number)
    digits = number.digits.reverse

    if digits.count == 3 && (digits[1]).zero? && (digits[2]).zero?
      first_digit = digits[0]
      "#{NUMBER_IN_WORDS[first_digit]} hundred"
    elsif digits.count == 3
      first_digit = digits[0]
      second_digit = digits[1]
      third_digit = digits[2]
      last_part_of_word = last_part_of_word(second_digit, third_digit)
      "#{NUMBER_IN_WORDS[first_digit]} hundred and #{last_part_of_word}"
    elsif number > 20 && digits[1] != 0
      first_digit = digits[0]
      second_digit = digits[1]
      "#{NUMBER_IN_WORDS[first_digit * 10]}-#{NUMBER_IN_WORDS[second_digit]}"
    else
      NUMBER_IN_WORDS[number]
    end
  end

  private

  def last_part_of_word(second_digit, third_digit)
    if second_digit == 1
      last_two_digits = [second_digit, third_digit].join.to_i
      NUMBER_IN_WORDS[last_two_digits]
    elsif second_digit.zero?
      NUMBER_IN_WORDS[third_digit]
    elsif third_digit.zero?
      NUMBER_IN_WORDS[second_digit * 10]
    else
      "#{NUMBER_IN_WORDS[second_digit * 10]}-#{NUMBER_IN_WORDS[third_digit]}"
    end
  end
end
