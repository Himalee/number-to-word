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
    word = ''

    return NUMBER_IN_WORDS[number] if NUMBER_IN_WORDS.key?(number)

    first_digit = digits[0]
    second_digit = digits[1]
    if digits.count == 2
      word << last_part_of_word(first_digit, second_digit)
    else
      third_digit = digits[2]
      word << "#{NUMBER_IN_WORDS[first_digit]} hundred"
      if !second_digit.zero? || !third_digit.zero?
        word << ' and '
        word << last_part_of_word(second_digit, third_digit)
      end
    end

    word
  end

  private

  def last_part_of_word(penultimate_digit, last_digit)
    if penultimate_digit == 1
      last_two_digits = [penultimate_digit, last_digit].join.to_i
      NUMBER_IN_WORDS[last_two_digits]
    elsif penultimate_digit.zero?
      NUMBER_IN_WORDS[last_digit]
    elsif last_digit.zero?
      NUMBER_IN_WORDS[penultimate_digit * 10]
    else
      "#{NUMBER_IN_WORDS[penultimate_digit * 10]}-#{NUMBER_IN_WORDS[last_digit]}"
    end
  end
end
