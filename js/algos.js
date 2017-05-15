// Algorithm Challenge //

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
	  console.log("true")
	  return true;
	} else {
	console.log("false")
	  return false;
	}
} // end function

// RELEASE 2 | Create a function that takes an integer and creates a random array of words (can be fantastical made up words - possibly from harry potter) of the given length. Each word should be randomly between 1 and 10 character
 	// Create a function that takes an integer
 	// Create an empty array to store the random array
 	// Create a second array to store an array of numbers made up of the intial random numbers
 	// Loop through the empty array as many times as the number
 		// Use math random technique to loop and create randomly gnerated numbers (up to 10) - as many as the argument
 			// For each of those number loop through again to make an array of numbers leading up to that one. (eg for (3, 4) it is [[1, 2, 3], [1, 2, 3, 4])
 		// Convert those numbers into a string using String.fromCharCode
 		//push a random string of characters in as an array item

 function randomWordArray(arrayNum) {
 	var randArr = []
 	var randNumArr = []
 	
 	for (var i = 0; i < parseInt(arrayNum); i++) {
 		var randNum = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
 		
 		for (x = 0; x < randNum; x++) {
 		    randNumArr.push(x);
      	} 
 	    randArr.push(randNumArr);
 	}console.log(randArr);
 
 	
 }

//Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)

////////////////////////////////////

// DRIVER CODE //

// Release 0
//longestWord(["long phrase","longer phrase","longest phrase"]);
//longestWord(["long phrase","longest phrase","longer phrase"]);
//longestWord(["longest phrase","long phrase","longer phrase"]);

// Release 1
//keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); // true
//keyValueMatch({name: "Mary", age: 2}, {name: "Mar Mar", age: 70});  // false

// Release 2
randomWordArray(3);

