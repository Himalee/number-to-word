require 'number_converter'
describe NumberConverter do
	before(:each) do
		@number_converter = NumberConverter.new
	end

	it "returns word for numbers 1-10" do
		expect(@number_converter.convert(1)).to eq("one")
		expect(@number_converter.convert(10)).to eq("ten")
	end

	it "returns word for numbers 11-20" do
		expect(@number_converter.convert(12)).to eq("twelve")
		expect(@number_converter.convert(15)).to eq("fifteen")
		expect(@number_converter.convert(17)).to eq("seventeen")
		expect(@number_converter.convert(20)).to eq("twenty")
	end

	it "returns word for numbers 21-100" do
		expect(@number_converter.convert(21)).to eq("twenty-one")
		expect(@number_converter.convert(50)).to eq("fifty")
		expect(@number_converter.convert(63)).to eq("sixty-three")
		expect(@number_converter.convert(99)).to eq("ninety-nine")
		expect(@number_converter.convert(100)).to eq("one hundred")
	end
end