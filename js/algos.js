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
	// Loop through each object key/value pair using the for..in loop in the first object
	// Loop through each object key/value pair using the for..in loop in the second object
		// Within the two loops - if the key in the first object matches the key in the second 
		//AND the value in the first object matches the value in the second object
		// Return true
		// Logic of looping through twice:
			// for {k1: v1, k2: v2}, {k3: v3, k4: v4}
			// for {name: "Steven", age: 54}, {name: "Tamir", age: 54}
			// Does k1 == k3 && does v1 == v3 - false
			// Does k1 == k4 && does v1 == v4 - false
			// Does k2 == k3 && does v2 == k3 - false
			// Does k2 == k4 && does v2 == v4 - true
		// **Figure out how to loop through all senarios before returning false **Solved, because the if loop would break out of the loop as soon as it returns false (aka the first conditional), set it to update a variable that will collect the true return

function keyValueMatch(obj1, obj2) {
	var keyValueTrue = false;
	
	for (var objVal1 in obj1) {
		for(var objVal2 in obj2){
			if (objVal1 == objVal2 && obj1[objVal1] == obj2[objVal2]) {
				keyValueTrue = true;
			}
		}
	} // end for for...each loops
	
	if (keyValueTrue === true){
	  return true;
	} else {
	  return false;
	}
} // end function
// DRIVER CODE

// Release 0
//longestWord(["long phrase","longer phrase","longest phrase"]);
//longestWord(["long phrase","longest phrase","longer phrase"]);
//longestWord(["longest phrase","long phrase","longer phrase"]);

// Release 1
keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true
keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true
keyValueMatch({name: "Mary", age: 2}, {name: "Mar Mar", age: 70}); #  false

// Release 2

