require 'number_converter'

describe NumberConverter do
  before(:each) do
    @number_converter = NumberConverter.new
  end

  it 'returns word for numbers 1-10' do
    expect(@number_converter.convert(1)).to eq('one')
    expect(@number_converter.convert(10)).to eq('ten')
  end

  it 'returns word for numbers 11-20' do
    expect(@number_converter.convert(12)).to eq('twelve')
    expect(@number_converter.convert(15)).to eq('fifteen')
    expect(@number_converter.convert(17)).to eq('seventeen')
    expect(@number_converter.convert(20)).to eq('twenty')
  end

  it 'returns word for numbers 21-100' do
    expect(@number_converter.convert(21)).to eq('twenty-one')
    expect(@number_converter.convert(50)).to eq('fifty')
    expect(@number_converter.convert(63)).to eq('sixty-three')
    expect(@number_converter.convert(99)).to eq('ninety-nine')
    expect(@number_converter.convert(100)).to eq('one hundred')
  end

  it 'returns word for numbers 101-1000' do
    expect(@number_converter.convert(105)).to eq('one hundred and five')
    expect(@number_converter.convert(210)).to eq('two hundred and ten')
    expect(@number_converter.convert(411)).to eq('four hundred and eleven')
    expect(@number_converter.convert(111)).to eq('one hundred and eleven')
    expect(@number_converter.convert(218)).to eq('two hundred and eighteen')
    expect(@number_converter.convert(326)).to eq('three hundred and twenty six')
    expect(@number_converter.convert(502)).to eq('five hundred and two')
    expect(@number_converter.convert(999)).to eq('nine hundred and ninety nine')
    expect(@number_converter.convert(1000)).to eq('one thousand')
  end
end
