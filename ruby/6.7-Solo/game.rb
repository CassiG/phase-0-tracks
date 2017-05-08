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
#While the game is less than the length of the array
	#if the player 1 word and the player 2 word is correct
	#win!
	#else
	#lose



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

	def p1_word
		@p1_word = gets.chomp.split('')
	end

	def p2_guess
		@p1_word.each do |letter|
			puts "Enter a letter"
			@p2_guess = gets.chomp
			if @p2_guess == letter 
				puts "That letter is in the word"
				@p2_word << @p2_guess
			elsif @p2_guess != @p1_word[@guess_count] 
				puts 'That letter is not in the word'
			end
		end
	end

	def win_game
		while guess_count <= @p1_word.length
			if @p1_word.join == @p2_word.join
				p "you win!"
			else
				p "you loose"
			end
			guess_count += 1
		end
	end
end

game = GuessingGame.new
game.p1_word
game.p2_guess
