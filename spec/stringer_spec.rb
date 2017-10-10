require "spec_helper"
RSpec.describe Stringer do
	it "concatenates undefined number of strings with a space" do 
		expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
	end
	it "shortens a string to a max length and adds a '...' to the end" do
		expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq( "Hello, I'm...")
	end
	it "returns the string itself if string length <= max length" do
		expect(Stringer.minify("Hello", 10)).to eq("Hello")
	end
	it "replaces each instance of a string with another string" do
		expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
	end
	it "adds each word in a string to an array and returns that array" do
		expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
	end
	it "removes each instance of a word from original string" do
		expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
	end
end