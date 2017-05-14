// Algorithm Challenge 

// RELEASE 0 | Create a function that takes an array of words or phrases  
	// Create an empty longest word string 
	// Start with an empty string - longWord
	// Loop and check each array item
		// if the first array item is longer than longWord, that item becomes longWord (it is blank so it will be)
		// On each check after that if the next array item is longWord (which will now become the last item each time),
		//that word is now longword
// Return the longest word variable

function longestWord(array) {
	var longWord = array[0]

	for (var i = 1; i < array.length; i++) {
		if (array[i].length > longWord.length) {
			longWord = array[i];
		} 
	} console.log(longWord);
} 

longestWord(["Word", "Longest Word (Cause it's a phrase)", "Longer"])


