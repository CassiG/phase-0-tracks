#One user can enter a word and another user attempts to guess the word.
#Guesses are limited, and the number of guesses available is related to the length of the word.
#Repeated guesses do not count against the user.
#The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
#The user should get a congratulatory message if they win, and a taunting message if they lose.

#Take a word from Player 1
#Split that word into an array of letters
#Start a loop that lasts the length of the array of letters
	#Player 2 enters a lette
	#If that letter = the letter we’re on (from the loop)
	#Print blank letters _, then print the index of the one that’s right, then more blank letters_”
	#Else print all blank letters
#If the length of letters = the word
	#print congratulations
#else print you loose