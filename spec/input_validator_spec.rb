require 'input_validator'

describe InputValidator do
  before(:each) do
    @input_validator = InputValidator.new
  end

  it 'returns true if string input only contains numbers 0-9' do
    expect(@input_validator.number?('120')).to be true
    expect(@input_validator.number?('0')).to be true
    expect(@input_validator.number?('12345')).to be true
  end

  it 'returns false if string input does not only contain numbers 0-9' do
    expect(@input_validator.number?('12abc')).to be false
    expect(@input_validator.number?('abc9')).to be false
    expect(@input_validator.number?('1?2')).to be false
    expect(@input_validator.number?('12!')).to be false
  end

  it 'returns true if string input is within given range' do
    expect(@input_validator.within_range?('12', 0, 20)).to be true
    expect(@input_validator.within_range?('10', 10, 11)).to be true
    expect(@input_validator.within_range?('10', 8, 10)).to be true
  end

  it 'returns false if string input is not within given range' do
    expect(@input_validator.within_range?('12', 1, 10)).to be false
    expect(@input_validator.within_range?('10', 11, 20)).to be false
    expect(@input_validator.within_range?('10', 100, 200)).to be false
  end
end
