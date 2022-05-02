require 'number_converter'
describe NumberConverter do
	before(:each) do
		@number_converter = NumberConverter.new
	end

	it "returns word for numbers 1-10" do
		expect(@number_converter.convert(1)).to eq("one")
		expect(@number_converter.convert(10)).to eq("ten")
	end
end