// Reverse a string

// Create a function to take a string as an argument function(string)
	// Define an empty string (this will hold the new, reversed string)
	// Create a loop counting backwards (Take the string lenght and count backwards by 1)
	// Assign the new string to each character of the current string, going backwards (string[i])
	// Return the new string
// Print string

function reverseString(string) {
	var newString = ""

	for (var i = (string.length -1); i >= 0; i--) {
		newString += string[i];
	}

	console.log(newString);
}

// Driver Code

reverseString("naan"); // See it works!
reverseString("hello"); // Just kidding I'll try a real word
reverseString("This is a whole string");

// Create a conditional statment to run the code
// If pigs can fly, run the code
// else, break

var pigs = "can fly"

if (pigs == "can fly") {
	console.log("I always knew pigs could fly, I'm so excited I'll yell it backwards") + reverseString("This is true!");
} else {
	console.log("Well if pigs can't fly, who can??");
}