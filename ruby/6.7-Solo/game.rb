##
#6.7 Solo Challange | Create a Game
#Cassi Gallagher
##

##

#Pseudocode

#One user can enter a word and another user attempts to guess the word.
	#Take a word from Player 1
	#Split that word into an array of letters
#Guesses are limited to the length of the word. Repeated guesses allowed
	#Start a loop that lasts the length of the array of letters
		#Player 2 enters a letter
	#Provide continual feedback
		#If that letter = the letter we’re on (from the loop)
		#Print blank letters  "_" + then print correct letter + add'l blank letters "_”
		
		#Else print all blank letters
#If the length of letters = the word
	#print congratulations
#else print you loose

##

class GuessingGame

	attr_accessor :p1_word, :p2_guess

	def initialize
		@p1_word = "testing".split('')
		@p2_guess = "t"
	end

	def new_game
		index = 0
		guess = ""
		while index < @p1_word.length
			if @p1_word.fetch(index) == @p2_guess
				print @p2_guess
			elsif @p1_word.fetch(index) != @p2_guess
				print " _ "
			end
			index += 1
		end
	end

end

p new_game

