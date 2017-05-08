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

## Attempted this but was having trouble implementing printing out something like _ _ _ _ t each time - subbing in text as an alternative for time purposes.

#While the game is less than the length of the array
	#if the player 1 word and the player 2 word is correct
		#win!
	#else
		#lose
## Attempted to anticpiate if the letters were not in the correct order but got stalled on the logic of this

## BEGIN GAME LOGIC

class GuessingGame

	attr_reader :p1_word, :p2_guess, :p2_word, :win_game, :guess_count, :p2_guesses

	def initialize
		@p1_word = ''
		@p2_guess = ''
		@p2_word = []
		@win_game = false
		@guess_count = 0
		@p2_guesses = false
	end

	def p1_word_guess
		@p1_word = gets.chomp.split('')
	end

	def p2_guess
		@p1_word.each do |letter|
			puts "Enter a letter"
			@p2_guess = gets.chomp
			if @p2_guess == letter 
				puts "That letter is in the word" # 
				@p2_word << @p2_guess
			elsif @p2_guess != @p1_word[@guess_count] 
				puts 'That letter is not in the word'
			end
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
