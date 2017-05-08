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
			#shovel that letter into an array
			#store that letter in an array
		#else
			#shovel " _ " into an array 

## Attempted to deal with logic on if letter is guessed in the right order but got stalled on that

#While the game is less than the length of the array
	#if the player 1 word and the player 2 word is correct
		#win!
	#else
		#lose


## BEGIN GAME LOGIC

class GuessingGame

	attr_reader :p1_word, :p2_guess, :p2_word, :guess_count, :p2_guesses, :letter_correct, :right_letter

	def initialize
		@p1_word = ''
		@p2_guess = ''
		@p2_word = []
		@guess_count = 0
		@p2_guesses = false
		@letter_correct = []
	end

	def p1_word_guess
		@p1_word = gets.chomp.split('')
	end

	def p2_guess
		@p1_word.map do |letter|
			puts "Enter a letter"
			@p2_guess = gets.chomp
			if @p2_guess == letter 
				puts "That letter is in the word" # 
				@p2_word << @p2_guess
				@letter_correct << @p2_guess
			elsif @p2_guess != letter
				puts 'That letter is not in the word'
				@letter_correct << " _ "
			end
			p @letter_correct
		end
	end

	def win_game
		if @p1_word.join == @p2_word.join
			p "Congratulations - you win the game."
		else
			p "Well, this is awkward...LOSE"
		end
	end
end

## BEGIN GAME INTERFACE
puts 'Welcome to WordGuessGame - the game that is definitely not hangman, but totally our own thing'

game = GuessingGame.new
puts "Player 1 Please enter a word"
game.p1_word

puts "Player 2 please guess the word one letter at a time. You get #{game.p1_word_guess.length} guesses"
game.p2_guess

game.win_game
