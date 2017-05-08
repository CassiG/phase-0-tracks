##
#6.7 Solo Challange | Create a Game
#Cassi Gallagher
##

##

#Pseudocode

#One user can enter a word and another user attempts to guess the word.
	#Take a word from Player 1
	#Split that word into an array of letters
#Check the letter for feedback
	#If that letter = the letter we’re on (from the loop)
		#Print blank letters  "_" + then print correct letter + add'l blank letters "_”
		#Else print all blank letters
#If the joined answer = p1_word.joined && guess_count <= p1_word.length
	#Congratulations!
#If the joined answer does not equal p1_word.joined && guess_count = p1_word.length
	#Boo You Lose
##

class GuessingGame

	attr_accessor :p1_word, :p2_guess
	attr_reader :guess_count, :letter_correct, :win_game

	def initialize
		@p1_word = "testing".split('')
		@p2_guess = "t"
		@guess_count = 0
		@letter_correct = false
		@win_game = 
	end

	def check_letter
		@p1_word.each do |index|
			if index == @p2_guess
				letter_correct = true
			else 
				false
			end
			return letter_correct
		end
	end

	def win_game
	end

end

