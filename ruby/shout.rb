module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(happy_words)
		happy_words + "!!!" + " :D"
	end
end

puts Shout.yell_angrily("I'm MAD")
puts Shout.yell_happily("YAY")