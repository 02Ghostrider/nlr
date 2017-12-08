require_relative '../record.rb'

describe "Record" do
	it "instantiates an object with title and artist" do
		record = Record.new("Thriller", "Michael Jackson")
		expect(record).to be_an_instance_of(Record)
	end
	it "returns a string with the record name" do
		record = Record.new("Thriller", "Michael Jackson")
		expect(record.title).to eq("Thriller")
	end
	it "returns a string with the artist name" do
		record = Record.new("Thriller", "Michael Jackson")
		expect(record.artist).to eq("Michael Jackson")
	end
end
