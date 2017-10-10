require "stringer/version"
module Stringer
    def self.spacify (string, *strings)
		strings.each do |s|
			string += " " + s
		end
		string
	end
	def self.minify (string, max_length)
		if string.size <= max_length
			return string
		else
			string[0, max_length]+"..."
		end
	end
	def self.replacify (string, word, replacement)
		while string.sub!(word, replacement) do
		end
		string
	end
	def self.tokenize (string)
		string.split
	end
	def self.removify (string, word)
		string = string.split
		string.delete(word)
		string.join(" ")
	end
end