#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end

#	def self.yell_happily(happy_words)
#		happy_words + "!!!" + " :D"
#	end
#end

#puts Shout.yell_angrily("I'm MAD")
#puts Shout.yell_happily("YAY")

module Shout
	def shout(shouting)
		puts "I am feeling so many emotions that today I just need to shout: #{shouting}"
	end
end

class Angry
	include Shout
end

class Happy
	include Shout
end

yell_angrily = Angry.new
puts yell_angrily.shout("I'm MAD")

yell_happily = Happy.new
puts yell_happily.shout("YAY")
