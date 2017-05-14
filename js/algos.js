// Algorithm Challenge 

// Create a function that takes an array of words or phrases  
	// Create an empty longest word string 
	// Loop through each array item. For each item 
		// Check it against the first word. If array[i] (the current word) is longer than the first word
		// Store that word in a variable
		// Else store the first word in a variable
// Return the longest word variable

function longestWord(array) {
	var longWord = ""
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > array[0].length){
			longWord = array[i]; 
		} else {
			longWord = array[0];
		}console.log(longWord);

	} 
}

longestWord(["Word", "Longest Word (Cause it's a phrase)", "Longer"])


