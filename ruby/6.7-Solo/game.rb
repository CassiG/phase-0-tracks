##
#6.7 Solo Challange | Create a Game
#Cassi Gallagher
##

##

#Pseudocode

#Get initial word from player 1

class GuessingGame

	attr_reader :guess_count, :letter_correct, :win_game

	def initialize
		@guess_count = 0
		@letter_correct = false
		@win_game = false
		@answer = []
	end

	def initial_word
		puts "Player 1 enter a word"
		initial_word = "test"
	end

	def check_letter
		@p1_word.split('').each do |index|
			if index == @p2_guess
				@letter_correct = true
			else 
				false
			end
			return letter_correct
		end
	end

	def answer 
		@answer << @p2_guess
	end

	def win_game

		while @guess_count <= @p1_word.split('').length 
			if @p1_word == answer.join('')
				@answer = true
			else
				false
			end
			@guess_count += 1
		end

	end

end

