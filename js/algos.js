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

// RELEASE 1 | Create a function that takes two objects and checks to see if the objects share at least one key-value pair
	// Loop through each object key/value pair using the for..in loop
		// If the key in the first object matches the key in the second AND the value in the first object matches the value in the second object
		// Return true
		// Find out how to loop through two objects at the same time

function keyValueMatch(obj1, obj2) {
	for (var objVal1 in obj1) {
		for(var objVal2 in obj2){
			console.log(objVal1);
			console.log(obj1[objVal1]);
			console.log(objVal2);
			console.log(obj2[objVal2]);

		}
	}
}

// DRIVER CODE

// Release 0
//longestWord(["long phrase","longer phrase","longest phrase"]);
//longestWord(["long phrase","longest phrase","longer phrase"]);
//longestWord(["longest phrase","long phrase","longer phrase"]);

// Release 1
keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});

// Release 2

