##
#6.7 Solo Challange | Create a Game
#Cassi Gallagher
##

##

#Pseudocode

#Get initial word from player 1
#Create a loop that loops as long as the inital word
	#Ask player 2 for a guess
	#Let player 2 enter a letter
		#if the letter == the first letter of guess_word
			#print that letter
			#store that letter in an array
		#else
			#print a " _ "



class GuessingGame

	attr_reader :p1_word, :p2_guess, :p2_word

	def initialize
		@p1_word = ''
		@p2_guess = ''
		@p2_word = []
	end

	def p1_word
		@p1_word = "test".split('')
	end

	def p2_guess
		@p2_guess = "t"
		p1_word.each do |letter|
			if @p2_guess == letter 
				print @p2_guess
				@p2_word << @p2_guess
			else
				print ' _ '
			end
			return @p2_word
		end
	end
end

