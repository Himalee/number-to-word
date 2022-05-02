class InputValidator
  def number?(string_input)
    string_input.scan(/\D/).empty?
  end

  def within_range?(string_input, min, max)
    string_input.to_i.between?(min, max)
  end
end
