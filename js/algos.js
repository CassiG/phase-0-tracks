// Algorithm Challenge 

// RELEASE 0 | Create a function that takes an array of words or phrases  
	// Create an empty longest word string 
	// Start the first word (array[0])
	// Loop and check each array item
		// if the next array item (array[i] starting at 1) that item becomes longWord 		
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

longestWord(["long phrase","longer phrase","longest phrase"])
longestWord(["long phrase","longest phrase","longer phrase"]);
longestWord(["longest phrase","long phrase","longer phrase"]);


